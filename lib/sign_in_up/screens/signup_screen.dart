import 'package:artisan/common/welcome_text.dart';
import 'package:artisan/common/welcome_title.dart';
import 'package:artisan/constants/global_variables.dart';
import 'package:artisan/sign_in_up/screens/login_screen.dart';
import 'package:artisan/sign_in_up/widget/country_code_picker.dart';
import 'package:artisan/sign_in_up/widget/input_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignupScreen extends StatefulWidget {
  static const String routeName = '/signup-screen';
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _signUpFormKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _passwordController.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
  }

  moveToLoginScreen() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const LoginScreen(),
    ));
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
                  welcomeTitle: "Create \nAccount",
                  welcomeTitleColor: GlobalVariables.welcomeTitleColor,
                ),
                const SizedBox(
                  height: 28,
                ),
                const WelcomeText(
                    welcomeText: "Please Sign Up to continue",
                    welcomeTextColor: Colors.black),
                const SizedBox(
                  height: 28,
                ),
                //Username
                InputTextField(
                    textEditingController: _nameController,
                    icon: Icons.person,
                    textInputType: TextInputType.text,
                    hintText: "Name"),
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
                // Email
                InputTextField(
                    textEditingController: _emailController,
                    icon: Icons.mail,
                    textInputType: TextInputType.text,
                    hintText: "Email"),
                const SizedBox(
                  height: 23,
                ),
                // Country Code
                CountryCodePicker(
                  phoneNumberController: _phoneNumberController,
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
                        "Sign Up",
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
                        "Already have an account?",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: moveToLoginScreen,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: const Text(
                          "Log in",
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
      ),
    );
  }
}
