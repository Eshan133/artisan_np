import 'package:artisan/sign_in_up/screens/login_screen.dart';
import 'package:artisan/sign_in_up/screens/signup_screen.dart';
import 'package:artisan/splash/splash_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case SignupScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const SignupScreen(),
      );

    case LoginScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const LoginScreen(),
      );

    case SplashScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const SplashScreen(),
      );

    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text("Error 404"),
          ),
        ),
      );
  }
}
