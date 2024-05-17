import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../Constants/App_constants.dart';
import 'Create_account_main.dart';
import '../Log_in.dart';

class create_account extends StatefulWidget {
  @override
  State<create_account> createState() => _create_accountState();
}

class _create_accountState extends State<create_account> {
  bool isCheckbox = false;

  @override

  Widget build(BuildContext context) {
    var screenInfo = MediaQuery.of(context);
    final double screenWidth = screenInfo.size.width;
    final double screenHeight = screenInfo.size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(right:screenWidth/35, left: screenWidth/35),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:  EdgeInsets.only(top:screenHeight/20),
                  child: const Text(AppString.createAccountText, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                ),
                const SizedBox(height:13),
                Padding(
                  padding:  EdgeInsets.only(top:screenHeight/30,right:screenWidth/20, left: screenWidth/20),
                  child: const Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText:AppString.name,

                            suffixIcon: Icon(Icons.account_circle),
                          ),
                          style: TextStyle(
                            color: AppColors.loginTextColor,
                            fontSize: 14,
                          ),

                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText:AppString.surname,
                            suffixIcon: Icon(Icons.account_circle),
                          ),
                          style: TextStyle(
                            color: AppColors.loginTextColor,
                            fontSize: 14,
                          ),
                        ),
                      ),


                    ],

                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(top:screenHeight/35 ,right:screenWidth/20, left: screenWidth/20),
                  child: Column(
                    children: [
                      Create_account_main(AppString.userName, Icons.account_circle, screenHeight/25),
                      Create_account_main(AppString.mail, Icons.mail_outline_rounded, screenHeight/25),
                      Create_account_main(AppString.telno, Icons.phone, screenHeight/25),
                      Create_account_main(AppString.password, Icons.password, screenHeight/25),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: isCheckbox,
                      onChanged: (bool? newValue) {
                        setState(() {
                          isCheckbox = newValue!;
                        });
                      },
                    ),
                    Text(AppString.kabul,style: TextStyle(fontSize: screenWidth/34),),

                  ],
                ),
                SizedBox(
                  width: screenWidth/2,
                  height: screenHeight/17,
                  child: ElevatedButton(
                    child:const Text(AppString.createAcc),
                    onPressed: (){
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Log_in()));
                      });
                    },
                    style: ElevatedButton.styleFrom(
                    ),
                  ),
                ),
              ],

            ),
          ),
        ),
      ),
    );
  }
}