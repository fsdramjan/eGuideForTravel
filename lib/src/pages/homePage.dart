import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:etravel_app/src/controllers/itemC.dart';
import 'package:etravel_app/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatelessWidget {
  final _ = Get.put(ItemController(), permanent: true);

  // final List<IconData> icondata = [
  //   Icons.verified,
  //   Icons.highlight_off,
  //   Icons.verified,
  //   Icons.highlight_off,
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#ecf0f1'),
      appBar: AppBar(
        backgroundColor: HexColor('#36b8c5'),
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: searchBar(),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
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
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, bottom: 10),
              child: Text(
                'All Country',
                style: TextStyle(fontSize: 22),
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
                    padding: EdgeInsets.only(
                      left: 12,
                      right: 8,
                    ),
                    child: Container(
                      width: 140,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  '${item['image']}',
                                  width: 100,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '${item['country']} ',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(
                                Icons.person,
                                color: Colors.black54,
                                size: 15,
                              ),
                              Text(
                                '(${item['user']})',
                                style: TextStyle(
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      '''All User's''',
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 6,
                        crossAxisSpacing: 6,
                        childAspectRatio: .85,
                      ),
                      shrinkWrap: true,
                      primary: false,
                      itemCount: _.allUser.length,
                      itemBuilder: (BuildContext context, int index) {
                        final item = _.allUser[index];
                        return Padding(
                          padding: EdgeInsets.only(
                            left: 8,
                            right: 8,
                            bottom: 8,
                          ),
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
                                    Padding(
                                      padding: EdgeInsets.only(top: 25),
                                      child: Container(
                                        child: CircleAvatar(
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
                                      ),
                                    ),
                                    Positioned(
                                      top: 10,
                                      right: -30,
                                      child: Image.asset(
                                        '${item['country']}',
                                        height: 15,
                                      ),
                                    ),
                                    Positioned(
                                      top: 10,
                                      left: -30,
                                      child: Container(
                                        height: 20,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            color: HexColor('#36b8c5')
                                                .withOpacity(.50),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Center(
                                          child: KText(
                                            text: 'Guide',
                                            color: Colors.black54,
                                            fontSize: 10,
                                          ),
                                        ),
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
          Icon(Icons.menu, size: 30, color: HexColor('#2c3e50')),
          Icon(Icons.favorite, size: 30, color: HexColor('#2c3e50')),
          Icon(Icons.group_add_outlined, size: 30, color: HexColor('#2c3e50')),
          Icon(Icons.person, size: 30, color: HexColor('#2c3e50')),
        ],
        onTap: (index) {},
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

  Widget searchBar() {
    return Container(
      height: 38,
      width: 260,
      child: TextField(
        // readOnly: true,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          hintText: 'Search',
          prefixIcon: Icon(Icons.search),
          fillColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }
}
