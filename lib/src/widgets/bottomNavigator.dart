import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

Widget bottomNavigator() {
  return CurvedNavigationBar(
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
  );
}
