import 'package:etravel_app/src/configs/appTheme.dart';
import 'package:etravel_app/src/widgets/appbarWidget.dart';
import 'package:etravel_app/src/widgets/bottomNavigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class ProfileDetailsPage extends StatelessWidget {
  final Map<String, dynamic> item;
  final String id;
  ProfileDetailsPage({
    required this.id,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#ecf0f1'),
      appBar: appBarWidget(Icons.menu, () {}),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              backgroundColor: HexColor('#36b8c5').withOpacity(.50),
              radius: 60,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(70),
                child: Image.asset(
                  '${item['profileImg']}',
                  width: 140,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '${item['name']} ',
                  style: GoogleFonts.poppins(
                    fontSize: 22,
                    wordSpacing: 3,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SvgPicture.asset(
                  '${item['verify']}',
                  height: 15,
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                star(),
                star(),
                star(),
                star(),
                star(),
                Text(
                  '(192 reviews)',
                  style: TextStyle(
                    letterSpacing: .80,
                    fontSize: 12,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Divider(),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 20,
                        color: Colors.black54,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '${item['district']}  ',
                        style: TextStyle(
                          letterSpacing: .80,
                          fontSize: 13,
                          color: Colors.black54,
                        ),
                      ),
                      Image.asset(
                        '${item['country']}',
                        height: 12,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.person_sharp,
                        size: 20,
                        color: Colors.black54,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Member since :  Aug 2021',
                        style: GoogleFonts.poppins(
                          letterSpacing: .80,
                          fontSize: 12,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.history,
                        size: 20,
                        color: Colors.black54,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Avg. Response : 1 hour',
                        style: GoogleFonts.poppins(
                          letterSpacing: .80,
                          fontSize: 12,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.person_sharp,
                        size: 20,
                        color: Colors.black54,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Last Travel :  1 week ago',
                        style: GoogleFonts.poppins(
                          letterSpacing: .80,
                          fontSize: 12,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Divider(),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.info,
                        size: 20,
                        color: Colors.black54,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 4,
                        child: Text(
                          'About Guider :   Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ',
                          style: GoogleFonts.poppins(
                            letterSpacing: .80,
                            fontSize: 12,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      height: 50,
                      width: Get.width,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              offset: Offset(0, 6),
                            ),
                          ],
                          color: AppTheme.primaryColor,
                          borderRadius: BorderRadius.circular(30)),
                      alignment: Alignment.center,
                      child: Text(
                        'Hire Now',
                        style: GoogleFonts.ubuntu(
                          color: Colors.white,
                          letterSpacing: 3,
                          fontWeight: FontWeight.w500,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottomNavigator(),
    );
  }

  Widget star() {
    return Icon(
      Icons.star,
      size: 19,
      color: Colors.deepOrange,
    );
  }
}
