import 'package:artisan/auth/services/auth_service.dart';
import 'package:artisan/constants/global_variables.dart';
import 'package:artisan/home_page/home_screen.dart';
import 'package:artisan/landing_page.dart';
import 'package:artisan/providers/user_provider.dart';
import 'package:artisan/routes.dart';
import 'package:artisan/auth/screens/login_screen.dart';
import 'package:artisan/auth/screens/signup_screen.dart';
import 'package:artisan/auth/widget/country_code_picker.dart';
import 'package:artisan/splash_entry/entry_screen.dart';
import 'package:artisan/splash_entry/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => UserProvider(),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AuthService authService = AuthService();

  @override
  void initState() {
    super.initState();
    authService.getUser(context: context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      onGenerateRoute: (settings) => generateRoute(settings),
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
            // background: GlobalVariables.backgroundColor, primary: Colors.black,
            // secondary: Colors.black, tertiary: Colors.black,
            // primary: GlobalVariables.backgroundColor,
            ),
      ),
      // home: const LandingPage(),
    );
  }
}
