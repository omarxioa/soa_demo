import 'package:flutter/material.dart';
import 'package:website_soa/constants.dart';
import 'package:website_soa/utilities/responsive.dart';
import '../utilities/title_text.dart';

class WhoAreWeWidget extends StatelessWidget {
  const WhoAreWeWidget({
    super.key,
    required this.deviceSize,
  });

  final Size deviceSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: Responsive.isDesktop(context) ? 0 : 20,
      ),
      height: Responsive.isDesktop(context) ? deviceSize.height * 0.40 : null,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TitleTextWidget(
            title: 'Who are we',
            deviceSize: deviceSize,
          ),
          Padding(
            padding: Responsive.isDesktop(context)
                ? EdgeInsets.symmetric(horizontal: 175)
                : EdgeInsets.only(left: 20, right: 20),
            child: Text(
                style: kParagraphTextStyle,
                textAlign: TextAlign.center,
                'Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.'),
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
