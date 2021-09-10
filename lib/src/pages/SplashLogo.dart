import 'package:etravel_app/src/configs/appTheme.dart';
import 'package:etravel_app/src/controllers/configController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class SplashLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(ConfigController()).splashPage();
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppTheme.white,
        body: Center(
          child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), 
                color:AppTheme.primaryColor, 
              ),
              child: Image.asset(
                'assets/img/logo.png',
                width: 200,
              ),),
        ),
      ),
    );
  }
}
