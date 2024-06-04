import 'package:artisan/constants/global_variables.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/countries.dart';
import 'package:intl_phone_field/phone_number.dart';

class CountryCodePicker extends StatefulWidget {
  final TextEditingController phoneNumberController;
  const CountryCodePicker({super.key, required this.phoneNumberController});

  @override
  State<CountryCodePicker> createState() => _CountryCodePickerState();
}

class _CountryCodePickerState extends State<CountryCodePicker> {
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0), // Adjust as needed
      borderSide: const BorderSide(
        color: GlobalVariables.textBoxBorderColor,
        width: 1.0, // Choose your width
      ),
    );
    return IntlPhoneField(
      controller: widget.phoneNumberController,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        labelText: 'Phone Number',
        labelStyle: const TextStyle(
          color: GlobalVariables.textBoxTextColor,
          fontSize: 12,
          fontFamily: 'Zona Pro',
          fontWeight: FontWeight.w400,
        ),
        focusedBorder: inputBorder,
        enabledBorder: inputBorder,
      ),
      style: const TextStyle(
        // backgroundColor: Colors.white,
        color: GlobalVariables.textBoxTextColor,
        fontSize: 12,
        fontFamily: 'Zona Pro',
        fontWeight: FontWeight.w400,
      ),
      dropdownDecoration: const BoxDecoration(),
      dropdownIcon: const Icon(
        Icons.arrow_drop_down,
        color: Colors.black,
      ),
      dropdownTextStyle: const TextStyle(color: Colors.black),
      initialCountryCode: 'NP',
    );
  }
}
