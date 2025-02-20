// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MapScreen extends StatelessWidget {
  final double latitude = 30.03106; // Marker Latitude
  final double longitude = 31.50538; // Marker Longitude

  // Replace with your actual Google Maps API Key
  final String googleMapsApiKey = "AIzaSyDjnKcZY9AgXkfi0fxyGka9G9iDQCSAjU0";

  const MapScreen({super.key});

  // Adjusted center latitude to shift map down and move marker up
  String getGoogleStaticMapUrl() {
    double shiftedLatitude = latitude - 0.01; // Shifts the map down

    return "https://maps.googleapis.com/maps/api/staticmap?"
        "center=$shiftedLatitude,$longitude" // Center shifted down
        "&zoom=14"
        "&size=600x400"
        "&maptype=roadmap"
        "&markers=color:red%7Clabel:SOA%7C$latitude,$longitude" // Marker stays at original location
        "&key=$googleMapsApiKey";
  }

  Future<void> _launchGoogleMaps() async {
    final String googleMapsUrl =
        "https://www.google.com/maps/search/?api=1&query=$latitude,$longitude";

    Uri uri = Uri.parse(googleMapsUrl);

    if (await canLaunchUrl(uri)) {
      await launchUrl(
        uri,
        mode: LaunchMode.externalApplication, // Opens Google Maps externally
      );
    } else {
      print("Could not launch $googleMapsUrl");
    }
  }

  // Show Alert Dialog before launching URL
  void _showConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: Text("Open Google Maps?"),
          content: Text("Do you want to open this location in Google Maps?"),
          actions: [
            TextButton(
              child: Text("Cancel"),
              onPressed: () => Navigator.of(dialogContext).pop(),
            ),
            ElevatedButton(
              child: Text("Yes"),
              onPressed: () {
                Navigator.of(dialogContext).pop(); // Close dialog
                _launchGoogleMaps(); // Open Google Maps
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () => _showConfirmationDialog(context),
          child: Image.network(
            getGoogleStaticMapUrl(),
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover, // Fills the entire screen
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return Center(child: CircularProgressIndicator());
            },
          ),
        ),
      ],
    );
  }
}
