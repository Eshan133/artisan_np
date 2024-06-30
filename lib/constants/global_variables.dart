import 'package:flutter/material.dart';

String uri = 'http://192.168.165.170';

class GlobalVariables {
  static const Color backgroundColor = Color(0xFFFFF9EF);
  static const Color welcomeTitleColor = Color(0xFFA61D00);
  static const Color textBoxBorderColor = Color(0xFFFFD6D6);
  static const Color textBoxIconColor = Color(0xFF626262);
  static const Color textBoxTextColor = Color(0xFF676767);
  static const Color splashBgColor = Color(0xFFB85245);
  static const Color locationIconColor = Color(0xFFB60328);
  static const Color categoryColor = Color(0xFFFFDDCE);
  static const Color darkRed = Color(0xFF540000);
  static const secondaryColor = Color.fromRGBO(255, 153, 0, 1);

  static const List<String> carouselImages = [
    'assets/images/advertisement.png',
    'assets/images/advertisement1.png',
    'assets/images/advertisement2.png'
  ];

  static const List<Map<String, String>> categoryImages1 = [
    {
      'title': 'Cloths',
      'image': 'assets/images/cloths.png',
    },
    {
      'title': 'Handcraft',
      'image': 'assets/images/basket.png',
    },
    {
      'title': 'Leather',
      'image': 'assets/images/leatherbag.png',
    },
    {
      'title': 'Jwelery',
      'image': 'assets/images/jwelery.png',
    },
    {
      'title': 'Doll',
      'image': 'assets/images/doll.png',
    },
  ];

  static const List<Map<String, String>> categoryImages2 = [
    {
      'title': 'Woodcraft',
      'image': 'assets/images/woodcraft.png',
    },
    {
      'title': 'Metalcraft',
      'image': 'assets/images/me5tal.png',
    },
    {
      'title': 'Art',
      'image': 'assets/images/paint.png',
    },
    {
      'title': 'Stonecraft',
      'image': 'assets/images/stone.png',
    },
    {
      'title': 'Mask',
      'image': 'assets/images/mask.png',
    },
  ];

  static const List<Map<String, String>> items = [
    {
      'title': 'Hexagon Crochet',
      'image': 'assets/images/product1.png',
    },
    {
      'title': 'Dhaka Tote Bag',
      'image': 'assets/images/product2.png',
    },
    {
      'title': 'Tibetan Window',
      'image': 'assets/images/product3.png',
    },
    {
      'title': 'Kumari Incense',
      'image': 'assets/images/product4.png',
    },
    {
      'title': 'Brass Blue Pendants',
      'image': 'assets/images/product5.png',
    },
    {
      'title': 'Colorful Top',
      'image': 'assets/images/product6.png',
    },
  ];
}
