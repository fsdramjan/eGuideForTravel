import 'package:etravel_app/src/configs/appTheme.dart';
import 'package:etravel_app/src/pages/SplashLogo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      smartManagement: SmartManagement.onlyBuilder,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      home: SplashLogo(),
    );
  }
}
