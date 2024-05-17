import 'package:check_box/Pages/ChooseMode.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../Constants/App_constants.dart';
import 'create_account/create_account.dart';

class Log_in extends StatefulWidget {
  const Log_in({super.key});

  @override
  State<Log_in> createState() => _Log_inState();
}

class _Log_inState extends State<Log_in> {
  bool isSwitched=false;
  @override
  Widget build(BuildContext context) {
    var screenInfo = MediaQuery.of(context);

    final double screenWidth = screenInfo.size.width;
    final double screenHeight = screenInfo.size.height;
    return  Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

            Container(
              width: screenWidth ,
              height: screenHeight/2.5,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                border: Border.all(width: 2, color: AppColors.logContainer),
                boxShadow:
                [ BoxShadow(
                  color: Colors.grey.withOpacity(0.8),
                  spreadRadius: 5, // Gölgenin yayılma yarıçapı
                  blurRadius: 7, // Gölge bulanıklık yarıçapı
                  offset: const Offset(0, 6),
                ),
                ],
                image: const DecorationImage(
                  image: AssetImage(AppImages.logo),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: screenHeight/10, right: screenWidth/12, left: screenWidth/16),
              child: Container(
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        icon: Padding(
                          padding: EdgeInsets.only(top: screenHeight / 50),
                          child: const Icon(Icons.account_circle),
                        ),
                        labelText: AppString.userName,
                        labelStyle: const TextStyle(
                            color: AppColors.loginTextColor,
                            fontSize: 14
                        ),
                      ),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          icon: Padding(
                            padding: EdgeInsets.only(top: screenHeight / 50),
                            child: const Icon(Icons.key_rounded, size: 25),
                          ),
                          labelText: AppString.password,
                          labelStyle: const TextStyle(
                            color: AppColors.loginTextColor,
                            fontSize: 14,
                          )
                      ),

                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Switch.adaptive(
                              activeColor:AppColors.switchActiveColor,
                              value: isSwitched,
                              onChanged: (bool value){
                                setState(() {
                                  isSwitched = value;
                                });
                              }
                          ),
                          const Text(AppString.remember, style: TextStyle(color:AppColors.grey, fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: screenHeight / 100),
                      child: SizedBox(
                        width: screenWidth/4,
                        child: Padding(
                          padding:  EdgeInsets.only(top: screenHeight/50),
                          child: FloatingActionButton(
                            tooltip: "Fab1",
                            backgroundColor: AppColors.p2buttonbg,
                            foregroundColor: AppColors.p2buttonfg,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            child: const Text(AppString.login, style: TextStyle(color:AppColors.white,fontSize: 16, fontWeight: FontWeight.bold),),
                            onPressed: () {
                              setState(() {
                                Navigator.push(context, MaterialPageRoute(builder: (context) =>  ChooseMode()));
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: screenHeight/50),
                      child: SizedBox(
                        width: screenWidth/1.7,
                        child: ElevatedButton(
                          child:const Text(AppString.createAcc, style: TextStyle(color:AppColors.white),) ,
                          onPressed: (){
                            setState(() {
                              Navigator.push(context, MaterialPageRoute(builder: (context) =>  create_account()));
                            });
                          },
                          style: ElevatedButton.styleFrom(backgroundColor:AppColors.createButtonBg),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// yan çevirince logo sığmıyor o düzeltilecek.