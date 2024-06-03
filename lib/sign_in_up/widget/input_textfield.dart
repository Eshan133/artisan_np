import 'package:artisan/constants/global_variables.dart';
import 'package:flutter/material.dart';

class InputTextField extends StatefulWidget {
  final TextEditingController textEditingController;
  final IconData icon;
  final TextInputType textInputType;
  final String hintText;
  final bool isPass;

  const InputTextField({
    super.key,
    required this.textEditingController,
    required this.icon,
    required this.textInputType,
    required this.hintText,
    this.isPass = false,
  });

  @override
  State<InputTextField> createState() => _InputTextFieldState();
}

class _InputTextFieldState extends State<InputTextField> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0), // Adjust as needed
      borderSide: const BorderSide(
        color: GlobalVariables.textBoxBorderColor,
        width: 1.0, // Choose your width
      ),
    );
    return TextFormField(
      cursorColor: GlobalVariables.textBoxTextColor,
      controller: widget.textEditingController,
      decoration: InputDecoration(
        prefixIcon: Icon(
          widget.icon,
          color: GlobalVariables.textBoxIconColor,
        ),
        suffixIcon: widget.isPass
            ? IconButton(
                color: GlobalVariables.textBoxIconColor,
                icon: Icon(
                  widget.isPass ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                },
              )
            : null,
        border: inputBorder,
        fillColor: Colors.white,
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          color: GlobalVariables.textBoxTextColor,
          fontSize: 12,
          fontFamily: 'Zona Pro',
          fontWeight: FontWeight.w400,
        ),
        enabledBorder: inputBorder,
        focusedBorder: inputBorder,
        contentPadding: const EdgeInsets.all(8),
        filled: true,
      ),
      style: const TextStyle(color: GlobalVariables.textBoxTextColor),
      validator: (val) {
        if (val == null || val.isEmpty) {
          return 'Please Enter your ${widget.hintText}';
        }
        return null;
      },
      obscureText: widget.isPass ? _isObscure : false,
      keyboardType: widget.textInputType,
    );
  }
}
