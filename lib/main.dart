import 'package:etravel_app/src/app.dart';
import 'package:etravel_app/src/controllers/configController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Get.put(ConfigController()).initAppConfig();
  runApp(App());
}
