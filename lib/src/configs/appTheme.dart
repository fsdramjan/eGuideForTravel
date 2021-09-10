import 'package:etravel_app/src/helpers/hexToColor.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AppTheme {
  static Color white = HexColor('#ffffff');
  static Color scaffoldBackground = HexColor('#ffffff');
  static Color textColor = Colors.black54;
  static Color fillColor = HexColor('#F2F7FB');
  static Color inputTextColor = HexColor('#8Q8D93');
  static Color primaryColor = HexColor('#36b8c5');
  static Color accentColor = HexColor('#1C3E6C');

  static ThemeData appTheme = ThemeData(
    hoverColor: Colors.green,
    fontFamily: 'roboto',
    scaffoldBackgroundColor: HexColor('#ecf0f1'),
    appBarTheme: AppBarTheme(
      backgroundColor:  HexColor('#ecf0f1'),
      elevation: 0,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      errorStyle: TextStyle(
        color: hexToColor('#e74c3c'),
      ),
      contentPadding: EdgeInsets.symmetric(vertical: 12),
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(10),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(
          color: HexColor('#c7ecee').withOpacity(.45),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(color: HexColor('#c7ecee').withOpacity(.45)),
      ),
      fillColor: Colors.white,
      filled: true,
    ),
  );
}
