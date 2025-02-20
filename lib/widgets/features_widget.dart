import 'package:flutter/material.dart';
import 'package:website_soa/constants.dart';
import 'package:website_soa/utilities/responsive.dart';
import 'package:website_soa/utilities/title_text.dart';

class FeaturesWidget extends StatelessWidget {
  const FeaturesWidget({
    super.key,
    required this.deviceSize,
  });

  final Size deviceSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Responsive.isDesktop(context)
          ? deviceSize.height * 0.83
          : deviceSize.height * 1.2,
      child: Stack(children: [
        Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xffF0F3F2),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(130),
                    )),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffF0F3F2),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(130),
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          margin: Responsive.isDesktop(context)
              ? EdgeInsets.only(left: 150, right: 150, top: 125)
              : EdgeInsets.only(left: 20, right: 20, top: 125),
          child: Column(
            children: [
              TitleTextWidget(deviceSize: deviceSize, title: 'Features'),
              Responsive.isDesktop(context)
                  ? Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding:
                              EdgeInsets.only(left: 30, right: 30, bottom: 30),
                          width: (deviceSize.width - 300) / 2,
                          height: deviceSize.height * 0.50,
                          child: Image.asset(
                            'assets/images/FeaturesImage.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(30),
                          width: (deviceSize.width - 300) / 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                softWrap: true,
                                textAlign: TextAlign.start,
                                'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web :',
                                style: kParagraphTextStyle,
                              ),
                              SizedBox(
                                height: 22,
                              ),
                              FeaturesTile(
                                  title: 'Unprecedented professional design.'),
                              FeaturesTile(
                                  title: 'User-friendly control panel.'),
                              FeaturesTile(
                                  title:
                                      'An explanation of the method of controlling the site.'),
                              FeaturesTile(
                                  title:
                                      'Create all sections and sub-sections.'),
                              FeaturesTile(
                                  title:
                                      'Possibility to add new services and update on request.'),
                            ],
                          ),
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        Text(
                          softWrap: true,
                          textAlign: TextAlign.center,
                          'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web :',
                          style: kParagraphTextStyle,
                        ),
                        SizedBox(
                          height: deviceSize.height * 0.4,
                          width: double.infinity,
                          child: Image.asset(
                            'assets/images/FeaturesImage.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        FeaturesTile(
                            title: 'Unprecedented professional design.'),
                        FeaturesTile(title: 'User-friendly control panel.'),
                        FeaturesTile(
                            title:
                                'An explanation of the method of controlling the site.'),
                        FeaturesTile(
                            title: 'Create all sections and sub-sections.'),
                        FeaturesTile(
                            title:
                                'Possibility to add new services and update on request.'),
                      ],
                    )
            ],
          ),
        ),
      ]),
    );
  }
}

class FeaturesTile extends StatelessWidget {
  const FeaturesTile({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      minTileHeight: 20,
      contentPadding: EdgeInsets.zero,
      leading: Icon(
        Icons.check_circle,
        color: kPrimaryColor,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
