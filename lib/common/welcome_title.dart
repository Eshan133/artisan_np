import 'package:flutter/material.dart';

class WelcomeTitle extends StatelessWidget {
  final String welcomeTitle;
  final Color welcomeTitleColor;
  final double welcomeTitleFontSize;
  final String welcomeTitleFontFamily;
  final FontWeight welcomeTitleFontWeight;
  const WelcomeTitle({
    super.key,
    required this.welcomeTitle,
    required this.welcomeTitleColor,
    required this.welcomeTitleFontSize,
    required this.welcomeTitleFontFamily,
    required this.welcomeTitleFontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      welcomeTitle,
      style: TextStyle(
        color: welcomeTitleColor,
        fontSize: welcomeTitleFontSize,
        fontFamily: welcomeTitleFontFamily,
        height: 0.99,
        fontWeight: welcomeTitleFontWeight,
      ),
    );
  }
}
