import 'package:etravel_app/src/pages/SplashNext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60),
                      ),
                      child: Hero(
                        tag: Null,
                        child: Image.asset(
                          "assets/img/sp-1.jpg",
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 15,
                    left: 190,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        circleAvatar(),
                        SizedBox(
                          width: 5,
                        ),
                        circleAvatar(),
                        SizedBox(
                          width: 5,
                        ),
                        circleAvatar(),
                        SizedBox(
                          width: 5,
                        ),
                        circleAvatar(),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Welcome',
                style: GoogleFonts.poppins(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'to',
                style: GoogleFonts.poppins(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'eGuide ',
                    style: GoogleFonts.poppins(
                      color: HexColor('#36b8c5'),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'for Travel',
                    style: GoogleFonts.poppins(
                      fontSize: 30,
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
                  color: Colors.black54,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                ' get started',
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  textStyle: TextStyle(
                    wordSpacing: 1.0,
                  ),
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 70,
                width: Get.width,
                decoration: BoxDecoration(
                  color: HexColor('#36b8c5'),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: TextButton(
                  onPressed: () => Get.to(SplashNext()),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'CONTINUE  ',
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 22,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget circleAvatar() {
    return CircleAvatar(
      radius: 4,
      backgroundColor: Colors.white38,
    );
  }
}
