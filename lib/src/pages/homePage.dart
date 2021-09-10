import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:etravel_app/src/configs/appTheme.dart';
import 'package:etravel_app/src/controllers/itemC.dart';

import 'package:etravel_app/src/pages/guideReqeustPage.dart';
import 'package:etravel_app/src/pages/introductionPage.dart';
import 'package:etravel_app/src/pages/profileDetailsPage.dart';

import 'package:etravel_app/src/widgets/listTile.dart';

import 'package:etravel_app/src/widgets/kText.dart';
import 'package:etravel_app/src/widgets/searchWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final _ = Get.put(ItemController(), permanent: true);

  final padding = EdgeInsets.symmetric(horizontal: 20);

  final leftPadding = EdgeInsets.only(left: 14);

  final topPadding = EdgeInsets.only(top: 25);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: HexColor('#ecf0f1'),
      drawer: drawerMenu(),
      appBar: AppBar(
        backgroundColor: HexColor('#36b8c5'),
        leading: IconButton(
          onPressed: () => _scaffoldKey.currentState?.openDrawer(),
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        title: searchBar(),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.question_answer,
              color: Colors.white,
            ),
          ),
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: padding,
              child: Text(
                'All Country',
                style: GoogleFonts.lato(
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                primary: false,
                itemCount: _.countryUser.length,
                itemBuilder: (BuildContext context, int index) {
                  final item = _.countryUser[index];
                  return Padding(
                    padding: leftPadding,
                    child: Container(
                      width: 140,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(12),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                '${item['image']}',
                                width: 120,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                KText(
                                  text: '${item['country']} ',
                                  color: Colors.black54,
                                  fontFamily: 'lato',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                                Icon(
                                  Icons.person,
                                  color: Colors.black45,
                                  size: 13,
                                ),
                                KText(
                                  text: '(${item['user']})',
                                  fontFamily: 'roboto',
                                  fontSize: 11,
                                  color: Colors.black54,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: leftPadding,
                  child: KText(
                    text: '''All User's''',
                    fontSize: 18,
                    fontFamily: 'lato',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12, right: 12),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 12,
                      childAspectRatio: .85,
                    ),
                    shrinkWrap: true,
                    primary: false,
                    itemCount: _.allUser.length,
                    itemBuilder: (BuildContext context, int index) {
                      final item = _.allUser[index];
                      return GestureDetector(
                        onTap: () => Get.to(ProfileDetailsPage(
                          item: item,
                          id: '${item['id']}',
                        )),
                        child: Container(
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 20,
                                        ),
                                        CircleAvatar(
                                          backgroundColor: HexColor('#36b8c5')
                                              .withOpacity(.50),
                                          radius: 50,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            child: Image.asset(
                                              '${item['profileImg']}',
                                              width: 120,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          '${item['country']}',
                                          height: 12,
                                        ),
                                        Icon(
                                          Icons.favorite,
                                          size: 20,
                                          color: Colors.redAccent,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '${item['name']} ',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      letterSpacing: .80,
                                      fontSize: 18,
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
                                  Flexible(
                                    flex: 2,
                                    child: Text(
                                      '(${item['district']})',
                                      style: TextStyle(
                                        letterSpacing: .80,
                                        fontSize: 13,
                                        color: Colors.black54,
                                      ),
                                    ),
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
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 55,
        color: HexColor('#36b8c5'),
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        animationDuration: Duration(microseconds: 100),
        items: [
          Icon(Icons.home, size: 30, color: HexColor('#2c3e50')),
          Icon(Icons.favorite, size: 30, color: HexColor('#2c3e50')),
          Icon(Icons.dashboard, size: 30, color: HexColor('#2c3e50')),
          Icon(Icons.notifications, size: 30, color: HexColor('#2c3e50')),
          Icon(Icons.person, size: 30, color: HexColor('#2c3e50')),
        ],
        onTap: (index) {},
      ),
    );
  }

  Widget drawerMenu() {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 200,
              width: Get.width,
              color: AppTheme.primaryColor,
              child: Image.asset(
                'assets/img/logo.png',
              ),
            ),
            listTile(
              () => Get.to(GuideRequestPage()),
              'Guide Request',
              Icons.hiking,
              Icons.navigate_next,
            ),
            listTile(
              () {},
              'My Balance',
              Icons.account_balance_wallet,
              Icons.navigate_next,
            ),
            listTile(
              () {},
              'Earnings',
              Icons.paid,
              Icons.navigate_next,
            ),
            Divider(),
            listTile(
              () {},
              'Message',
              Icons.sms,
              Icons.navigate_next,
            ),
            listTile(
              () {},
              'Payments',
              Icons.payments,
              Icons.navigate_next,
            ),
            listTile(
              () => Get.to(IntroductionPage()),
              'Introduction',
              Icons.info,
              Icons.navigate_next,
            ),
            listTile(
              () {},
              'Settings',
              Icons.settings,
              Icons.navigate_next,
            ),
            listTile(
              () {},
              'Support',
              Icons.support_agent_rounded,
              Icons.navigate_next,
            ),
          ],
        ),
      ),
    );
  }

  Widget star() {
    return Icon(
      Icons.star,
      size: 15,
      color: Colors.orange,
    );
  }
}
