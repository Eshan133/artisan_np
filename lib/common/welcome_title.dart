import 'package:flutter/material.dart';

class WelcomeTitle extends StatelessWidget {
  final String welcomeTitle;
  final Color welcomeTitleColor;
  const WelcomeTitle({
    super.key,
    required this.welcomeTitle,
    required this.welcomeTitleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      welcomeTitle,
      style: TextStyle(
        color: welcomeTitleColor,
        fontSize: 36,
        fontFamily: 'Archivo',
        height: 0.99,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
