import 'package:artisan/common/welcome_text.dart';
import 'package:artisan/common/welcome_title.dart';
import 'package:artisan/constants/global_variables.dart';
import 'package:artisan/home_page/advertisement_section.dart';
import 'package:artisan/home_page/category_section.dart';
import 'package:artisan/home_page/featured_artisans_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> names = [
    'Bluie Studio',
    'Raie Crafts',
    'Ishan Photos',
    'Anish Studio',
    'Kwoni Paint',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: GlobalVariables.backgroundColor,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 15, left: 15, right: 15, bottom: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Location Section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: const WelcomeText(
                              welcomeText: "Location",
                              welcomeTextColor: Colors.black,
                              size: 14,
                              fontFamily: 'DM Sans',
                            ),
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: GlobalVariables.locationIconColor,
                                size: 20,
                              ),
                              WelcomeText(
                                welcomeText: "Boudha, Kathmandu, Nepal",
                                welcomeTextColor: Colors.black,
                                fontFamily: 'DM Sans',
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.black,
                                size: 28,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.notifications_outlined,
                        color: Colors.black,
                        size: 30,
                      )
                    ],
                  ),

                  const SizedBox(
                    height: 24,
                  ),

                  // Featured Artisans Section
                  const FeaturedArtisansSection(),

                  const SizedBox(
                    height: 24,
                  ),

                  // Categories Section
                  const CategorySection(),

                  const SizedBox(
                    height: 24,
                  ),

                  // Advertisement Section
                  const AdvertisementSection(),
                ],
              ),
            ),
          ),
        ));
  }
}
