import 'package:artisan/constants/global_variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page/home_screen.dart';

class LandingPage extends StatefulWidget {
  static const String routeName = '/landing-screen';
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _selectedIndex = 0;
  double bottomBarWidth = 42;
  double bottomBarBorderWidth = 5;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<BottomNavigationBarItem> _bottomNavBarItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home_outlined),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.chat_outlined),
      label: 'Chat',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.manage_search_outlined),
      label: 'Explore',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart_outlined),
      label: 'Cart',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.person_2_outlined),
      label: 'Account',
    ),
  ];

  List<Widget> pages = [
    const HomeScreen(),
    const Text("This is chat"),
    const Text("This is explore"),
    const Text("This is cart"),
    const Text("This is account"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: GlobalVariables.welcomeTitleColor,
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.transparent,
        items: _bottomNavBarItems,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
