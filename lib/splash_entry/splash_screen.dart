import 'dart:async';

import 'package:artisan/constants/global_variables.dart';
import 'package:artisan/sign_in_up/screens/signup_screen.dart';
import 'package:artisan/splash_entry/entry_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = '/splash-screen';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2))
          ..forward();

    animation =
        CurvedAnimation(parent: animationController, curve: Curves.linear);

    Timer(
      const Duration(seconds: 3),
      () => Navigator.of(context).push(
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const EntryScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/splash_bg.png'),
              ),
            ),
          ),
          // Backdrop color
          Container(
            color: GlobalVariables.splashBgColor.withOpacity(0.93),
          ),
          ScaleTransition(
            scale: animation,
            child: Center(
              child: Container(
                height: 300,
                width: 300,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/logo.png'),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
