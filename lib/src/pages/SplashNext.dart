import 'dart:ui';

import 'package:etravel_app/src/pages/homePage.dart';
import 'package:etravel_app/src/pages/loginPage.dart';
import 'package:etravel_app/src/pages/registerPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class SplashNext extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor('#36b8c5'),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 600,
                width: 400,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      child: Hero(
                        tag: Null,
                        child: Image.asset(
                          "assets/img/sp-7.jpg",
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: TextButton(
                        onPressed: () => Get.to(HomePage()),
                        child: Container(
                          height: 30,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              'Skip',
                              style: GoogleFonts.lato(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 30,
                      left: 180,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            radius: 4,
                            backgroundColor: Colors.black54,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          CircleAvatar(
                            radius: 4,
                            backgroundColor: Colors.black12,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          CircleAvatar(
                            radius: 4,
                            backgroundColor: Colors.black12,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          CircleAvatar(
                            radius: 4,
                            backgroundColor: Colors.black12,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 360,
                      child: Column(
                        children: [
                          Text(
                            'Welcome',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'to',
                            style: GoogleFonts.poppins(
                              fontSize: 28,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'eTravel ',
                                style: GoogleFonts.poppins(
                                  color: HexColor('#36b8c5'),
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'and Guide',
                                style: GoogleFonts.poppins(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            '''The best place to travel and try new activities Let's''',
                            style: GoogleFonts.roboto(
                              fontSize: 14,
                              textStyle: TextStyle(
                                wordSpacing: 1.0,
                              ),
                              fontWeight: FontWeight.bold,
                              color: Colors.white54,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'get started',
                            style: GoogleFonts.roboto(
                              fontSize: 14,
                              textStyle: TextStyle(
                                wordSpacing: 1.0,
                              ),
                              fontWeight: FontWeight.bold,
                              color: Colors.white54,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'CONTINUE WITH',
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 50,
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextButton(
                    onPressed: () => Get.to(LoginPage()),
                    child: Text(
                      'LOG IN',
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 50,
                  width: Get.width,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.yellow,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextButton(
                    onPressed: () => Get.to(RegisterPage()),
                    child: Text(
                      'SIGN UP',
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
