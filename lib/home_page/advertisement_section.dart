import 'package:artisan/common/stars.dart';
import 'package:artisan/common/welcome_text.dart';
import 'package:artisan/common/welcome_title.dart';
import 'package:artisan/constants/global_variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/dimensions.dart';

class AdvertisementSection extends StatefulWidget {
  const AdvertisementSection({super.key});

  @override
  State<AdvertisementSection> createState() => _AdvertisementSectionState();
}

class _AdvertisementSectionState extends State<AdvertisementSection> {
  PageController pageController = PageController(viewportFraction: 0.85);
  double _currentPage = 0.0;
  double _transPage = 0.85;
  double _height = 320.0;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentPage = pageController.page!.toDouble();
      });
    });
  }

  List<String> images = [
    'assets/images/advertisement.png',
    'assets/images/advertisement1.png',
    'assets/images/advertisement2.png',
  ];

  List<String> names = ['Alice', 'Bob', 'Charlie', 'Dave', 'Eve'];

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    double pageViewContainer = screenHeight / 3.84;
    double pageViewTextContainer = screenHeight / 7.03;

    return Container(
      height: 320,
      child: PageView.builder(
        controller: pageController,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return _pageItem(index, images[index], names[index],
              pageViewContainer, pageViewTextContainer);
        },
      ),
    );
  }

  Widget _pageItem(int index, String imagePath, String name,
      double pageViewContainer, double pageViewTextContainer) {
    Matrix4 matrix4 = Matrix4.identity();

    if (index == _currentPage.floor()) {
      var currentScale = 1 - (_currentPage - index) * (1 - _transPage);
      var currentTrans = _height * (1 - currentScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTrans, 0);
    } else if (index == _currentPage.floor() + 1) {
      var currentScale =
          _transPage + (_currentPage - index + 1) * (1 - _transPage);
      var currentTrans = _height * (1 - currentScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTrans, 0);
    } else if (index == _currentPage.floor() - 1) {
      var currentScale =
          _transPage + (_currentPage - index - 1) * (1 - _transPage);
      var currentTrans = _height * (1 - currentScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTrans, 0);
    } else {
      var currentScale = _transPage;
      var currentTrans = _height * (1 - currentScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTrans, 0);
    }

    return Transform(
      transform: matrix4,
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              height: pageViewContainer,
              margin: const EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.red,
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 85,
              margin: const EdgeInsets.only(
                left: 30,
                right: 30,
                bottom: 30,
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0xFFe8e8e8),
                        offset: Offset(0, 5),
                        blurRadius: 5.0),
                    BoxShadow(color: Colors.white, offset: Offset(5, 0)),
                    BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
                  ]),
              child: Container(
                margin: const EdgeInsets.only(
                  top: 10,
                  left: 40,
                  right: 40,
                  bottom: 10,
                ),

                // Section Inside the Container below carousel

                // Heading
                child: const Column(
                  children: [
                    WelcomeTitle(
                        welcomeTitle: 'NepaCraft Studios',
                        welcomeTitleColor: GlobalVariables.welcomeTitleColor,
                        welcomeTitleFontSize: 16,
                        welcomeTitleFontFamily: 'DM Sans',
                        welcomeTitleFontWeight: FontWeight.w700),
                    SizedBox(
                      height: 6,
                    ),

                    // Star and Reviews
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stars(rating: 4),
                        WelcomeTitle(
                          welcomeTitle: '4.5/5 Reviews',
                          welcomeTitleColor: GlobalVariables.textBoxIconColor,
                          welcomeTitleFontSize: 10,
                          welcomeTitleFontFamily: 'DM Sans',
                          welcomeTitleFontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),

                    // Location
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_on,
                          color: GlobalVariables.locationIconColor,
                          size: 20,
                        ),
                        WelcomeTitle(
                          welcomeTitle: 'Kupondole, Lalitpur, Nepal',
                          welcomeTitleColor: GlobalVariables.textBoxIconColor,
                          welcomeTitleFontSize: 10,
                          welcomeTitleFontFamily: 'DM Sans',
                          welcomeTitleFontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
