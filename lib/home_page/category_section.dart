import 'package:artisan/common/welcome_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/global_variables.dart';

class CategorySection extends StatefulWidget {
  const CategorySection({super.key});

  @override
  State<CategorySection> createState() => _CategorySectionState();
}

class _CategorySectionState extends State<CategorySection> {
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
      height: 318,
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
          // Category Header
          Container(
            padding: const EdgeInsets.only(
              top: 13,
              left: 11,
              right: 11,
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
                      welcomeTitle: "Categories",
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
                  welcomeTitle: 'Inspired by your interests',
                  welcomeTitleColor: GlobalVariables.textBoxIconColor,
                  welcomeTitleFontSize: 12,
                  welcomeTitleFontFamily: 'Archivo',
                  welcomeTitleFontWeight: FontWeight.w400,
                  height: 1.2,
                  wordSpacing: 0.5,
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          // Scrollable Category

          // First Part
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
                        height: 74,
                        decoration: BoxDecoration(
                            color: GlobalVariables.categoryColor,
                            borderRadius: BorderRadius.circular(12.5)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12.5),
                          // child: Image.asset(
                          //     'assets/images/Artisan$index.png'),
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

          const SizedBox(
            height: 20,
          ),

          // Second Part
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
                        height: 74,
                        decoration: BoxDecoration(
                            color: GlobalVariables.categoryColor,
                            borderRadius: BorderRadius.circular(12.5)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12.5),
                          // child: Image.asset(
                          //     'assets/images/Artisan$index.png'),
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
