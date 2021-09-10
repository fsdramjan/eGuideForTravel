import 'package:etravel_app/src/configs/appTheme.dart';
import 'package:etravel_app/src/widgets/bottomNavigator.dart';
import 'package:etravel_app/src/widgets/kText.dart';
import 'package:etravel_app/src/widgets/listTile.dart';
import 'package:etravel_app/src/widgets/searchWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class GuideRequestPage extends StatelessWidget {
  GuideRequestPage({Key? key}) : super(key: key);

  final color = [
    AppTheme.primaryColor,
    Colors.black45,
    Colors.black45,
    Colors.black45,
  ];

  final guideRequestInfo = [
    {
      'title': 'Find Guide',
      'time': '10:30 AM',
      'subTitle': 'here you can find all guide',
    },
    {
      'title': 'Hire a guide',
      'time': '3:27 PM',
      'subTitle': 'here you can hire a guide',
    },
    {
      'title': 'Travel with guide',
      'time': '11:50 AM',
      'subTitle': 'here you can travel with guide',
    },
    {
      'title': 'Payment & feadback',
      'time': '6:30 PM',
      'subTitle': 'here you can check payment and all feadback',
    },
  ];
  final List<IconData> iconData = [
    Icons.connect_without_contact,
    Icons.emoji_people,
    Icons.follow_the_signs,
    Icons.published_with_changes,
  ];

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#ecf0f1'),
      key: _scaffoldKey,
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
          children: [
            Padding(
              padding: EdgeInsets.all(12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('assets/img/guide-slide.jpg'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_pin,
                  size: 15,
                  color: AppTheme.textColor,
                ),
                KText(
                  text: ' Cottages In The Middle Of Beach',
                  fontSize: 20,
                  fontFamily: 'lato',
                  color: AppTheme.primaryColor,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(),
            ),
            SizedBox(
              height: 10,
            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              primary: false,
              itemCount: guideRequestInfo.length,
              itemBuilder: (BuildContext contex, int index) {
                final item = guideRequestInfo[index];
                final icon = iconData[index];
                final colors = color[index];
                return Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(12),
                      child: Padding(
                        padding: EdgeInsets.only(left: 60),
                        child: Container(
                          alignment: Alignment.centerRight,
                          height: 80,
                          width: Get.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: AppTheme.primaryColor,
                                offset: Offset(4, 6),
                              ),
                            ],
                          ),
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundColor: AppTheme.primaryColor,
                              child: Icon(
                                icon,
                                color: Colors.white,
                              ),
                            ),
                            title: KText(
                              text: '${item['title']}',
                              fontWeight: FontWeight.bold,
                              fontFamily: 'lato',
                            ),
                            trailing: KText(
                              text: '${item['time']}',
                              fontWeight: FontWeight.bold,
                              color: Colors.black45,
                              fontSize: 13,
                            ),
                            subtitle: KText(
                              text: '${item['subTitle']}',
                              maxLines: 2,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      left: -50,
                      child: KText(
                        text: '''
                      
                      ¦
                      ¦
                      ¦
                      ¦
                      ¦
                      ¦
                      ¦
                      ''',
                        color: colors,
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottomNavigator(),
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
}
