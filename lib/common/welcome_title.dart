import 'package:flutter/material.dart';

class WelcomeTitle extends StatelessWidget {
  final String welcomeTitle;
  final Color welcomeTitleColor;
  final double welcomeTitleFontSize;
  final String welcomeTitleFontFamily;
  final FontWeight welcomeTitleFontWeight;
  final double wordSpacing;
  final double height;
  const WelcomeTitle(
      {super.key,
      required this.welcomeTitle,
      required this.welcomeTitleColor,
      required this.welcomeTitleFontSize,
      required this.welcomeTitleFontFamily,
      required this.welcomeTitleFontWeight,
      this.wordSpacing = 0,
      this.height = 0.99});

  @override
  Widget build(BuildContext context) {
    return Text(
      welcomeTitle,
      style: TextStyle(
        color: welcomeTitleColor,
        fontSize: welcomeTitleFontSize,
        fontFamily: welcomeTitleFontFamily,
        height: height,
        fontWeight: welcomeTitleFontWeight,
        wordSpacing: wordSpacing,
      ),
    );
  }
}
