import 'package:flutter/material.dart';
import 'package:website_soa/constants.dart';
import 'package:website_soa/utilities/responsive.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    super.key,
    required this.deviceSize,
  });

  final Size deviceSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 30),
      width: deviceSize.width,
      height: deviceSize.height * 0.75,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/home.png'), fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: Responsive.isDesktop(context) ? 58 : 30,
                  color: kPrimaryColor,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Creativity .. ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: 'has no limits',
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: Responsive.isDesktop(context) ? 58 : 30,
                      )),
                  TextSpan(
                      text: '!', style: TextStyle(fontWeight: FontWeight.bold)),
                ]),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Responsive.isDesktop(context) ? 0 : 25),
            child: Text(
              'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, an unknown ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w600,
                fontSize: Responsive.isDesktop(context) ? 20 : 14,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              side: BorderSide(
                color: kPrimaryColor,
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
              'Know more',
              style: TextStyle(
                  fontSize: Responsive.isDesktop(context) ? 17 : 14,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
