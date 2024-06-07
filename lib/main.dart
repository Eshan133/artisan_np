import 'package:artisan/constants/global_variables.dart';
import 'package:artisan/routes.dart';
import 'package:artisan/sign_in_up/screens/login_screen.dart';
import 'package:artisan/sign_in_up/screens/signup_screen.dart';
import 'package:artisan/sign_in_up/widget/country_code_picker.dart';
import 'package:artisan/splash_entry/entry_screen.dart';
import 'package:artisan/splash_entry/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      onGenerateRoute: (settings) => generateRoute(settings),
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(
            // background: GlobalVariables.backgroundColor, primary: Colors.black,
            // secondary: Colors.black, tertiary: Colors.black,
            // primary: GlobalVariables.backgroundColor,
            ),
      ),
      // home: const EntryScreen(),
    );
  }
}
