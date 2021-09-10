import 'package:etravel_app/src/pages/homePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_overboard/flutter_overboard.dart';
import 'package:get/get.dart';

class IntroductionPage extends StatelessWidget {
  final pages = [
    PageModel(
        color: Colors.grey[700],
        imageAssetPath: 'assets/img/intro-1.png',
        title: "E-Guide For Travel",
        body: "\"Make money by traveling\"\n",
        doAnimateImage: true),
    PageModel(
      color: Color(0xff106791),
      imageAssetPath: 'assets/img/intro-2.png',
      title: "Welcome",
      body:
          '''Greetings and congratulations from E-Guide for Travel. We all like to travel but due to
money problems we can't go around much.

''',
      doAnimateImage: true,
    ),
    PageModel(
        color: Color(0xff664d7b),
        imageAssetPath: 'assets/img/intro-3.png',
        title: "Introduction",
        body:
            '''The user of E-Guide for Travel sometimes acts as a traveler and sometimes as a
tour guide. This app solves the problem of traveling at the same time and
eliminates human unemployment.Our apps will basically work to solve people's
problems and fulfill dreams.''',
        doAnimateImage: true),
    PageModel(
        color: Color(0xff04364f),
        imageAssetPath: 'assets/img/intro-4.png',
        title: "Our Goal",
        body: ''' The main goal of E-Guide for
Travel is to fulfill the dream of people to
travel and thereby eliminate the
unemployment problem.''',
        doAnimateImage: true),
    PageModel(
        color: Colors.grey[850],
        imageAssetPath: 'assets/img/intro-5.png',
        title: "Size The Market",
        body: ''' 2+ Billion
Trips Booked (Worldwide)
532+ Million
Advanced Plan
10.5 Million
Premium Plan
Total Available Market (TAM)
''',
        doAnimateImage: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OverBoard(
        pages: pages,
        showBullets: true,
        skipCallback: () {
          Get.to(HomePage());
        },
        finishCallback: () {
          Get.to(HomePage());
        },
      ),
    );
  }
}
