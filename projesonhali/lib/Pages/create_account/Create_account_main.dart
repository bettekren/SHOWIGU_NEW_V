import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Constants/App_constants.dart';

class Create_account_main extends StatelessWidget {
  late String hintText;
  late IconData suffixIcon;
  late double heightScreen;

  Create_account_main(this.hintText, this.suffixIcon, this.heightScreen);

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding:  EdgeInsets.only(top:heightScreen),
      child: TextField(
        obscureText: hintText.contains(AppString.password),
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: hintText,
          suffixIcon: Icon(suffixIcon),
        ),
        style: const TextStyle(
          color: AppColors.loginTextColor,
          fontSize: 14,
        ),

      ),
    );
  }
}