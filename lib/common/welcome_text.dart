import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  final String welcomeText;
  final Color welcomeTextColor;
  const WelcomeText({
    super.key,
    required this.welcomeText,
    required this.welcomeTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      welcomeText,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        fontFamily: 'Open Sans',
        color: welcomeTextColor,
      ),
    );
  }
}
