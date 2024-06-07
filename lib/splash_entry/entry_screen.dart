import 'package:artisan/common/welcome_text.dart';
import 'package:artisan/common/welcome_title.dart';
import 'package:artisan/constants/global_variables.dart';
import 'package:artisan/splash_entry/widget/entry_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../sign_in_up/screens/signup_screen.dart';

class EntryScreen extends StatefulWidget {
  static const String routeName = '/entry-screen';
  const EntryScreen({super.key});

  @override
  State<EntryScreen> createState() => _EntryScreenState();
}

class _EntryScreenState extends State<EntryScreen> {
  moveToSignupScreen() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const SignupScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
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

          Column(
            children: [
              const SizedBox(
                height: 162,
              ),
              Center(
                child: Container(
                  height: 243,
                  width: 197,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/logo.png'),
                    ),
                  ),
                  // child: Text("Hekko"),
                ),
              ),
            ],
          ),
          Column(
            children: [
              const SizedBox(
                height: 526,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(
                      top: 67, left: 25, right: 25, bottom: 40),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: GlobalVariables.backgroundColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const WelcomeTitle(
                        welcomeTitle: "Welcome to Artisan Np",
                        welcomeTitleColor: GlobalVariables.welcomeTitleColor,
                        welcomeTitleFontSize: 26,
                        welcomeTitleFontFamily: 'Archivo',
                        welcomeTitleFontWeight: FontWeight.w500,
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      const WelcomeText(
                          welcomeText:
                              'Connect with talented artisans and explore the',
                          welcomeTextColor: Colors.black),
                      const WelcomeText(
                          welcomeText:
                              'rich cultural heritage woven into every piece.',
                          welcomeTextColor: Colors.black),
                      const SizedBox(
                        height: 24,
                      ),
                      const WelcomeText(
                          welcomeText: 'Sign In/Up to continue shopping',
                          welcomeTextColor: Colors.black),
                      const SizedBox(
                        height: 53,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: moveToSignupScreen,
                            child: const EntryButton(
                              text: 'Sign In',
                            ),
                          ),
                          const EntryButton(
                            text: 'Get Started',
                            textColor: Colors.white,
                            bgColor: GlobalVariables.welcomeTitleColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
