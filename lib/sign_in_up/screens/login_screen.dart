import 'package:artisan/common/welcome_text.dart';
import 'package:artisan/common/welcome_title.dart';
import 'package:artisan/constants/global_variables.dart';
import 'package:artisan/sign_in_up/screens/signup_screen.dart';
import 'package:artisan/sign_in_up/widget/input_textfield.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = '/login-screen';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _signInFormKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

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
        backgroundColor: GlobalVariables.backgroundColor,
        body: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.only(left: 20, right: 20, top: 81),
            child: Form(
              //Key left
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const WelcomeTitle(
                    welcomeTitle: "Welcome \nBack!",
                    welcomeTitleColor: GlobalVariables.welcomeTitleColor,
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  const WelcomeText(
                      welcomeText: "Please Sign In to continue",
                      welcomeTextColor: Colors.black),
                  const SizedBox(
                    height: 28,
                  ),

                  // Email
                  InputTextField(
                      textEditingController: _emailController,
                      icon: Icons.mail,
                      textInputType: TextInputType.text,
                      hintText: "Email"),
                  const SizedBox(
                    height: 23,
                  ),
                  // Password
                  InputTextField(
                      textEditingController: _passwordController,
                      icon: Icons.lock,
                      textInputType: TextInputType.text,
                      isPass: true,
                      hintText: "Password"),
                  const SizedBox(
                    height: 23,
                  ),

                  // Button
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: GlobalVariables.welcomeTitleColor),
                      child: const Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: const Text(
                          "Don’t have an account?",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: moveToSignupScreen,
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                              color: GlobalVariables.welcomeTitleColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
