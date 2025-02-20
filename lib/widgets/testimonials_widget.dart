import 'package:flutter/material.dart';
import 'package:website_soa/constants.dart';
import 'package:website_soa/utilities/responsive.dart';
import 'package:website_soa/utilities/title_text.dart';

class TestimonialsWidget extends StatelessWidget {
  const TestimonialsWidget({
    super.key,
    required this.deviceSize,
  });

  final Size deviceSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Responsive.isDesktop(context)
          ? deviceSize.height * 0.65
          : deviceSize.height * 0.8,
      child: Stack(
        children: [
          Container(
            color: kPrimaryColor,
          ),
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
                ? EdgeInsets.only(left: 80, right: 80, top: 125)
                : EdgeInsets.only(left: 20, right: 20, top: 125),
            child: Column(
              children: [
                Center(
                  child: TitleTextWidget(
                    title: 'Testimonials',
                    deviceSize: deviceSize,
                  ),
                ),
                SizedBox(
                  width: Responsive.isDesktop(context)
                      ? deviceSize.width * 0.65
                      : null,
                  child: Stack(
                    children: [
                      Container(
                        padding: Responsive.isDesktop(context)
                            ? EdgeInsets.symmetric(vertical: 40, horizontal: 60)
                            : EdgeInsets.symmetric(
                                vertical: 40, horizontal: 20),
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: Responsive.isDesktop(context)
                                  ? EdgeInsets.only(left: 700)
                                  : EdgeInsets.only(
                                      left: 100,
                                      top: deviceSize.height *
                                          0.22), // Add this line
                              child: Image.asset('assets/images/quotes.png'),
                            ),
                            Responsive.isDesktop(context)
                                ? SizedBox(
                                    height: deviceSize.height * 0.15,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/images/Avatar.png',
                                        ),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Mohamed Ibrahim',
                                                style: TextStyle(
                                                    color: kPrimaryColor,
                                                    fontSize: 19,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                child: Text(
                                                  textAlign: TextAlign.justify,
                                                  'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem',
                                                  style: TextStyle(
                                                    color: Color(0xff797979),
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                : SizedBox(
                                    // height: deviceSize.height * 0.6,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/images/Avatar.png',
                                        ),
                                        SizedBox(
                                          height: 30,
                                        ),
                                        Text(
                                          'Mohamed Ibrahim',
                                          style: TextStyle(
                                              color: kPrimaryColor,
                                              fontSize: 19,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 30,
                                        ),
                                        Text(
                                          'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem',
                                          style: TextStyle(
                                            color: Color(0xff797979),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                          ),
                                          textAlign: TextAlign.center,
                                        )
                                      ],
                                    ),
                                  ),
                          ],
                        ),
                      ),
                      Container(
                        height: deviceSize.height * 0.4,
                        padding: EdgeInsets.only(
                          top: 80,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 1, vertical: 7),
                              color: Colors.black,
                              child: Icon(
                                Icons.arrow_back_ios_new,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 1, vertical: 7),
                              color: kPrimaryColor,
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
