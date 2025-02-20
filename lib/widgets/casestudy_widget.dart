import 'package:flutter/material.dart';
import 'package:website_soa/utilities/responsive.dart';
import 'package:website_soa/utilities/title_text.dart';
import '../constants.dart';

class CaseStudyWidget extends StatelessWidget {
  const CaseStudyWidget({
    super.key,
    required this.deviceSize,
  });

  final Size deviceSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Responsive.isDesktop(context)
          ? deviceSize.height * 0.95
          : deviceSize.height * 1,
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Container(
                  color: kPrimaryColor,
                ),
              ),
            ],
          ),
          Center(
            child: Container(
              margin: Responsive.isDesktop(context)
                  ? EdgeInsets.only(
                      left: deviceSize.width * 0.1,
                      right: deviceSize.width * 0.1,
                      top: 80,
                    )
                  : EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 30,
                    ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TitleTextWidget(deviceSize: deviceSize, title: 'Case Study'),
                  Text(
                    textAlign: TextAlign.center,
                    'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. ',
                    style: kParagraphTextStyle,
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Responsive.isDesktop(context)
                      ? SizedBox(
                          width: (deviceSize.width - 350),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/images/1.png',
                                fit: BoxFit.fill,
                                height: deviceSize.height * 0.35,
                                width: deviceSize.width * 0.20,
                              ),
                              Image.asset(
                                'assets/images/2.png',
                                fit: BoxFit.fill,
                                height: deviceSize.height * 0.35,
                                width: deviceSize.width * 0.20,
                              ),
                              Image.asset(
                                'assets/images/1.png',
                                fit: BoxFit.fill,
                                height: deviceSize.height * 0.35,
                                width: deviceSize.width * 0.20,
                              ),
                            ],
                          ),
                        )
                      : SizedBox(
                          height: deviceSize.height * 0.35,
                          child: ListView(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            children: [
                              Image.asset(
                                'assets/images/2.png',
                                fit: BoxFit.fill,
                                height: deviceSize.height * 0.35,
                                // width: deviceSize.width * 0.45,
                              ),
                              SizedBox(width: 30),
                              Image.asset(
                                'assets/images/1.png',
                                fit: BoxFit.fill,
                                height: deviceSize.height * 0.35,
                                // width: deviceSize.width * 0.45,
                              ),
                              SizedBox(width: 30),
                              Image.asset(
                                'assets/images/2.png',
                                fit: BoxFit.fill,
                                height: deviceSize.height * 0.35,
                                // width: deviceSize.width * 0.45,
                              ),
                            ],
                          ),
                        ),
                  SizedBox(
                    height: 60,
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        color: Colors.white,
                        width: 1,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1),
                      ),
                      padding: Responsive.isDesktop(context)
                          ? EdgeInsets.symmetric(vertical: 15, horizontal: 45)
                          : EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                    ),
                    child: Text(
                      'More works',
                      style: TextStyle(
                          fontSize: Responsive.isDesktop(context) ? 17 : 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
