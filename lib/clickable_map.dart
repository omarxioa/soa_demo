// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';

class Map extends StatelessWidget {
  final LatLng riyadhLocation = LatLng(24.7136, 46.6753);

  Map({super.key});

  Future<void> _launchGoogleMaps() async {
    final String googleMapsUrl =
        "https://www.google.com/maps/search/?api=1&query=${riyadhLocation.latitude},${riyadhLocation.longitude}";

    if (await canLaunchUrl(Uri.parse(googleMapsUrl))) {
      await launchUrl(Uri.parse(googleMapsUrl),
          mode: LaunchMode.externalApplication);
    } else {
      print("Could not launch $googleMapsUrl");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("OpenStreetMap (No API Key)")),
      body: Stack(
        children: [
          FlutterMap(
            mapController: MapController(),
            options: MapOptions(
              initialCenter: riyadhLocation,
              initialZoom: 12.0,
              onTap: (_, __) => _launchGoogleMaps(),
            ),
            children: [
              TileLayer(
                urlTemplate:
                    "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    point: riyadhLocation,
                    width: 50,
                    height: 50,
                    child: GestureDetector(
                      onTap: _launchGoogleMaps,
                      child: Icon(
                        Icons.location_pin,
                        size: 40,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: ElevatedButton(
              onPressed: _launchGoogleMaps,
              child: Text("Open in Google Maps"),
            ),
          ),
        ],
      ),
    );
  }
}
