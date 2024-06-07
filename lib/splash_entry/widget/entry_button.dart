import 'package:artisan/common/welcome_title.dart';
import 'package:artisan/constants/global_variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EntryButton extends StatelessWidget {
  final Color bgColor;
  final String text;
  final Color textColor;
  const EntryButton({
    super.key,
    this.bgColor = Colors.white,
    this.textColor = GlobalVariables.welcomeTitleColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 39, vertical: 21),
      height: 62,
      width: 177,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: GlobalVariables.textBoxBorderColor,
          width: 1,
        ),
      ),
      child: Center(
        child: WelcomeTitle(
            welcomeTitle: text,
            welcomeTitleColor: textColor,
            welcomeTitleFontSize: 18,
            welcomeTitleFontFamily: 'Open Sans',
            welcomeTitleFontWeight: FontWeight.w600),
      ),
    );
  }
}
