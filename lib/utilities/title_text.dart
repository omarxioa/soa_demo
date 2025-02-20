import 'package:flutter/material.dart';

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({
    super.key,
    required this.deviceSize,
    required this.title,
  });
  final Size deviceSize;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: deviceSize.width * 0.065,
          child: Divider(
            color: Colors.black,
            thickness: 2,
          ),
        ),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
