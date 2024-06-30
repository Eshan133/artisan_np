import 'package:artisan/common/welcome_text.dart';
import 'package:artisan/common/welcome_title.dart';
import 'package:artisan/constants/global_variables.dart';
import 'package:artisan/home_page/advertisement_section.dart';
import 'package:artisan/home_page/category_section.dart';
import 'package:artisan/home_page/featured_artisans_section.dart';
import 'package:artisan/home_page/items_on_sale_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home-screen';
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

                  const SizedBox(
                    height: 24,
                  ),

                  // Items on Sale Section
                  Container(
                    width: double.infinity,
                    padding:
                        const EdgeInsets.symmetric(vertical: 16, horizontal: 9),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        // border: Border.all(
                        //   color: GlobalVariables.welcomeTitleColor
                        //       .withOpacity(0.2),
                        //   width: 1.0,
                        // ),
                        borderRadius: BorderRadius.circular(11)),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            WelcomeTitle(
                              welcomeTitle: 'Items on Sale',
                              welcomeTitleColor: Colors.black,
                              welcomeTitleFontSize: 18,
                              welcomeTitleFontFamily: 'Archivo',
                              welcomeTitleFontWeight: FontWeight.w500,
                              wordSpacing: 0.5,
                            ),
                            WelcomeTitle(
                              welcomeTitle: 'See More',
                              welcomeTitleColor:
                                  GlobalVariables.welcomeTitleColor,
                              welcomeTitleFontSize: 14,
                              welcomeTitleFontFamily: 'DM Sans',
                              welcomeTitleFontWeight: FontWeight.w400,
                              height: 1.8,
                            ),
                          ],
                        ),
                        WelcomeTitle(
                          welcomeTitle: 'Get ‘em before they’re gone!',
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
                    height: 20,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Container(
                      // color: Colors.white,
                      height: 803,
                      width: double.infinity,
                      child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  childAspectRatio: 1 / 1.5,
                                  mainAxisSpacing: 20,
                                  crossAxisSpacing: 16),
                          itemCount: 6,
                          itemBuilder: (BuildContext ctx, int index) {
                            return ItemsOnSaleSection(
                              imagePath: GlobalVariables.items[index]['image']!,
                              imageTitle: GlobalVariables.items[index]
                                  ['title']!,
                            );
                          }),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
