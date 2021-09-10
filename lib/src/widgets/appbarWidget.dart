import 'package:etravel_app/src/widgets/searchWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

PreferredSizeWidget appBarWidget(IconData icon, void Function()? onTap) {
  return AppBar(
    key: _scaffoldKey,
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
        elevation: 0,);
}
