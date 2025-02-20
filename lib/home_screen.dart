import 'package:flutter/material.dart';
import 'package:website_soa/home_page.dart';
import 'package:website_soa/widgets/casestudy_widget.dart';
import 'package:website_soa/widgets/features_widget.dart';
import 'package:website_soa/widgets/home_widget.dart';
import 'package:website_soa/widgets/links_widget.dart';
import 'package:website_soa/widgets/testimonials_widget.dart';
import 'package:website_soa/widgets/whoarewe_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomePage(),
            HomeWidget(deviceSize: deviceSize),
            WhoAreWeWidget(deviceSize: deviceSize),
            FeaturesWidget(deviceSize: deviceSize),
            CaseStudyWidget(deviceSize: deviceSize),
            TestimonialsWidget(deviceSize: deviceSize),
            LinksWidget(deviceSize: deviceSize),
          ],
        ),
      ),
    );
  }
}
