import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  final String welcomeText;
  final Color welcomeTextColor;
  final double size;
  final String fontFamily;
  const WelcomeText(
      {super.key,
      required this.welcomeText,
      required this.welcomeTextColor,
      this.size = 16,
      this.fontFamily = 'Open Sans'});

  @override
  Widget build(BuildContext context) {
    return Text(
      welcomeText,
      style: TextStyle(
        fontSize: size,
        fontWeight: FontWeight.w400,
        fontFamily: fontFamily,
        color: welcomeTextColor,
      ),
    );
  }
}
