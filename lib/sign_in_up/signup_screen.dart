import 'package:artisan/common/welcome_text.dart';
import 'package:artisan/common/welcome_title.dart';
import 'package:artisan/constants/global_variables.dart';
import 'package:artisan/sign_in_up/widget/input_textfield.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 81),
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
                Row(
                  children: [],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
