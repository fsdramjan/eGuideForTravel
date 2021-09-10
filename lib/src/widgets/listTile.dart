
import 'package:etravel_app/src/widgets/kText.dart';
import 'package:flutter/material.dart';


  Widget listTile(
    void Function()? onTap,
    String text,
    IconData icon,
    IconData trailing,
  ) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        icon,
        color: Colors.black38,
        size: 25,
      ),
      title: KText(
        text: text,
        fontFamily: 'lato',
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      trailing: Icon(Icons.navigate_next),
    );
  }