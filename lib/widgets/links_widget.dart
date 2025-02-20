import 'package:flutter/material.dart';
import 'package:website_soa/constants.dart';
import 'package:website_soa/map.dart';
import 'package:website_soa/utilities/responsive.dart';

class LinksWidget extends StatelessWidget {
  const LinksWidget({
    super.key,
    required this.deviceSize,
  });

  final Size deviceSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Responsive.isDesktop(context)
          ? deviceSize.height * 0.9
          : deviceSize.height * 1.5,
      child: Stack(
        children: [
          SizedBox(
            height:
                Responsive.isDesktop(context) ? deviceSize.height * 0.97 : null,
            child: MapScreen(),
          ),
          Responsive.isDesktop(context)
              ? Padding(
                  padding: const EdgeInsets.only(top: 400),
                  child: SizedBox(
                    height: deviceSize.height * 0.50,
                    child: Container(
                      padding: EdgeInsets.only(top: 70),
                      color: Colors.black.withValues(alpha: 60),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/soa-code-white.png'),
                              SizedBox(
                                width: 100,
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Links',
                                    style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffACACAC),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    'Home',
                                    style: kLinksTextStyle,
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'Who are we',
                                    style: kLinksTextStyle,
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'Features',
                                    style: kLinksTextStyle,
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Links',
                                    style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.transparent,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    'Case study',
                                    style: kLinksTextStyle,
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'Testmonials',
                                    style: kLinksTextStyle,
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'Support',
                                    style: kLinksTextStyle,
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 100,
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Mail list',
                                    style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffACACAC),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  MailTextField(deviceSize: deviceSize),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Follow us on:',
                                        style: TextStyle(
                                            fontSize: 23,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xffACACAC)),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border:
                                              Border.all(color: Colors.white),
                                        ),
                                        child: Image.asset(
                                            'assets/images/facebook-logo.png'),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border:
                                              Border.all(color: Colors.white),
                                        ),
                                        child: Image.asset(
                                            'assets/images/linkedin-logo.png'),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Divider(
                            indent: deviceSize.width * 0.13,
                            endIndent: deviceSize.width * 0.13,
                            color: Color(0xffACACAC),
                            thickness: 1,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'All copyrights reserved to to SOA-code © 2025',
                            style: TextStyle(
                                color: Color(0xffACACAC),
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              : Container(
                  padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                  width: double.infinity,
                  color: Colors.black87,
                  margin: const EdgeInsets.only(top: 400),
                  child: Column(
                    children: [
                      SizedBox(height: 30),
                      Image.asset('assets/images/soa-code-white.png'),
                      SizedBox(height: 50),
                      Text(
                        'Links',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffACACAC),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Home',
                        style: kLinksTextStyle,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Who are we',
                        style: kLinksTextStyle,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Features',
                        style: kLinksTextStyle,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Case study',
                        style: kLinksTextStyle,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Testmonials',
                        style: kLinksTextStyle,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Support',
                        style: kLinksTextStyle,
                      ),
                      SizedBox(height: 30),
                      Text(
                        'Mail list',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffACACAC),
                        ),
                      ),
                      SizedBox(height: 15),
                      MailTextField(deviceSize: deviceSize),
                      SizedBox(height: 30),
                      Text(
                        'Follow us on:',
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffACACAC)),
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white),
                            ),
                            child:
                                Image.asset('assets/images/facebook-logo.png'),
                          ),
                          SizedBox(width: 10),
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white),
                            ),
                            child:
                                Image.asset('assets/images/linkedin-logo.png'),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Divider(
                        indent: deviceSize.width * 0.13,
                        endIndent: deviceSize.width * 0.13,
                        color: Color(0xffACACAC),
                        thickness: 1,
                      ),
                      SizedBox(height: 30),
                      Text(
                        'All copyrights reserved to to SOA-code © 2025',
                        style: TextStyle(
                            color: Color(0xffACACAC),
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      )
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}

class MailTextField extends StatelessWidget {
  const MailTextField({
    super.key,
    required this.deviceSize,
  });

  final Size deviceSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: Responsive.isDesktop(context)
              ? deviceSize.width * 0.20
              : deviceSize.width * 0.7,
          height: 50,
          child: TextField(
            style: TextStyle(
              color: Colors.white,
            ),
            controller: TextEditingController(),
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 25, horizontal: 20),
              fillColor: Colors.black,
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(7),
                    bottomLeft: Radius.circular(7),
                  ),
                  borderSide: BorderSide.none),
              hintText: 'Enter your E-mail',
              hintStyle: TextStyle(
                fontSize: 14,
                color: Color(0xff868686),
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(7),
                bottomRight: Radius.circular(7),
              )),
          padding: EdgeInsets.symmetric(horizontal: 10),
          height: 50,
          child: Icon(
            Icons.send,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
