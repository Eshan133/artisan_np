import 'package:artisan/common/welcome_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/global_variables.dart';

class FeaturedArtisansSection extends StatefulWidget {
  const FeaturedArtisansSection({super.key});

  @override
  State<FeaturedArtisansSection> createState() =>
      _FeaturedArtisansSectionState();
}

class _FeaturedArtisansSectionState extends State<FeaturedArtisansSection> {
  List<String> names = [
    'Bluie Studio',
    'Raie Crafts',
    'Ishan Photos',
    'Anish Studio',
    'Kwoni Paint',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 193,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: GlobalVariables.welcomeTitleColor.withOpacity(0.2),
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(11),
        color: Colors.white,
      ),
      child: Column(
        children: [
          //  Featured Artisans Header
          Container(
            padding: const EdgeInsets.only(
              top: 15,
              left: 9,
              right: 9,
              bottom: 4,
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    WelcomeTitle(
                      welcomeTitle: "Featured Artisans",
                      welcomeTitleColor: Colors.black,
                      welcomeTitleFontSize: 18,
                      welcomeTitleFontFamily: 'Archivo',
                      welcomeTitleFontWeight: FontWeight.w600,
                      wordSpacing: 0.5,
                    ),
                    WelcomeTitle(
                      welcomeTitle: "See More",
                      welcomeTitleColor: GlobalVariables.welcomeTitleColor,
                      welcomeTitleFontSize: 14,
                      welcomeTitleFontFamily: 'DM Sans',
                      welcomeTitleFontWeight: FontWeight.w400,
                      height: 1.8,
                    ),
                  ],
                ),
                WelcomeTitle(
                  welcomeTitle: 'You might know',
                  welcomeTitleColor: GlobalVariables.textBoxIconColor,
                  welcomeTitleFontSize: 12,
                  welcomeTitleFontFamily: 'Archivo',
                  welcomeTitleFontWeight: FontWeight.w400,
                  height: 1.8,
                  wordSpacing: 0.5,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),

          //  Featured Artisans Scrollable
          Container(
            padding: const EdgeInsets.only(left: 8),
            height: 99,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.only(right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 73.73,
                        height: 73.73,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.red,
                            width: 1.0,
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset('assets/images/Artisan$index.png'),
                        ),
                      ),
                      WelcomeTitle(
                        welcomeTitle: names[index],
                        welcomeTitleColor: Colors.black,
                        welcomeTitleFontSize: 12,
                        welcomeTitleFontFamily: 'Open Sans',
                        welcomeTitleFontWeight: FontWeight.w400,
                        height: 2.1,
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
