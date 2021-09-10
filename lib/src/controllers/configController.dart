import 'package:etravel_app/src/pages/splashPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConfigController extends GetxController {
  Future<void> initAppConfig() async {
    try {
      WidgetsFlutterBinding.ensureInitialized();
    } catch (e) {}
  }

  splashPage() async {
    await Future.delayed(Duration(seconds: 2));

    Get.offAll(SplashPage());
  }
}
