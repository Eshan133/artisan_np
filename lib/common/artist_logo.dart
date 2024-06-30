import 'package:artisan/common/welcome_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArtistLogo extends StatelessWidget {
  const ArtistLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 15.46,
          height: 15.46,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.red,
              width: 1.0,
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset('assets/images/Artisan1.png'),
          ),
        ),
        const SizedBox(
          width: 3,
        ),
        WelcomeTitle(
          welcomeTitle: "Bluie studio",
          welcomeTitleColor: Colors.black.withOpacity(0.6),
          welcomeTitleFontSize: 11.59,
          welcomeTitleFontFamily: 'DM Sans',
          welcomeTitleFontWeight: FontWeight.w400,
          height: 1.7,
        ),
      ],
    );
  }
}
