import 'package:artisan/constants/global_variables.dart';
import 'package:artisan/sign_in_up/login_screen.dart';
import 'package:artisan/sign_in_up/signup_screen.dart';
import 'package:artisan/sign_in_up/widget/country_code_picker.dart';
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
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(
            // background: GlobalVariables.backgroundColor, primary: Colors.black,
            // secondary: Colors.black, tertiary: Colors.black,
            // primary: GlobalVariables.backgroundColor,
            ),
      ),
      home: const LoginScreen(),
    );
  }
}
