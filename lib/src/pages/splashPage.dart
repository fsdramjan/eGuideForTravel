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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 500,
                width: double.infinity,
                child: Stack(
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
                          CircleAvatar(
                            radius: 4,
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          CircleAvatar(
                            radius: 4,
                            backgroundColor: Colors.white38,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          CircleAvatar(
                            radius: 4,
                            backgroundColor: Colors.white38,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          CircleAvatar(
                            radius: 4,
                            backgroundColor: Colors.white38,
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
              GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SplashNext())),
                child: Container(
                  height: 88,
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: HexColor('#36b8c5'),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(80),
                      topRight: Radius.circular(80),
                    ),
                  ),
                  child: TextButton(
                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SplashNext())),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}




// import 'package:etravel_app/src/pages/SplashNext.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_overboard/flutter_overboard.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:hexcolor/hexcolor.dart';

// class SplashPage extends StatelessWidget {
//   final pages = [
//     PageModel(
//         color: Colors.grey[700],
//         imageAssetPath: 'assets/img/sp-1.jpg',
//         title: "",
//         body: "",
//         doAnimateImage: true),
//     PageModel(
//         color: Color(0xff106791),
//         imageAssetPath: 'assets/img/sp-1.jpg',
//         title: "",
//         body: "",
//         doAnimateImage: true),
//     PageModel(
//         color: Color(0xff664d7b),
//         imageAssetPath: 'assets/img/sp-1.jpg',
//         title: "",
//         body: "",
//         doAnimateImage: true),
//     PageModel(
//         color: Color(0xff04364f),
//         imageAssetPath: 'assets/img/sp-1.jpg',
//         title: "",
//         body: "",
//         doAnimateImage: true),
//     PageModel(
//         color: Colors.grey[850],
//         imageAssetPath: 'assets/img/sp-1.jpg',
//         title: "",
//         body: "",
//         doAnimateImage: true),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           SizedBox(
//             height: 32,
//           ),
//           Container(
//             height: 550,
//             width: 400,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(60),
//                 bottomRight: Radius.circular(60),
//               ),
//             ),
//             child: OverBoard(
//               pages: pages,
//               showBullets: true,
//               skipCallback: () {
//                 Get.to(SplashNext());
//               },
//               finishCallback: () {
//                 Get.to(SplashNext());
//               },
//             ),
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Text(
//             'Welcome',
//             style: GoogleFonts.poppins(
//               fontSize: 30,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           Text(
//             'to',
//             style: GoogleFonts.poppins(
//               fontSize: 28,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text(
//                 'eTravel ',
//                 style: GoogleFonts.poppins(
//                   color: HexColor('#36b8c5'),
//                   fontSize: 30,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               Text(
//                 'and Guide',
//                 style: GoogleFonts.poppins(
//                   fontSize: 30,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 15,
//           ),
//           Text(
//             '''The best place to travel and try new activities Let's            get started''',
//             style: GoogleFonts.roboto(
//               fontSize: 14,
//               textStyle: TextStyle(
//                 wordSpacing: 1.0,
//               ),
//               fontWeight: FontWeight.bold,
//               color: Colors.black54,
//             ),
//             textAlign: TextAlign.center,
//           ),
//           SizedBox(
//             height: 25,
//           ),
//         ],
//       ),
//     );
//   }
// }

