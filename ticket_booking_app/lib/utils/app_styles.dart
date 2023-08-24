import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class Styles {
  static Color PrimaryColor = primary;
  static Color TextColor = Color(0xFF3b3b3b);
  static Color bgColor = Color(0xFFeeedf2);
  static Color orangeColor =  Color(0xFFF37B67);
  static Color kakiColor = Color(0xFFd2bdd6);
  static TextStyle textStyle =
      TextStyle(fontSize: 16, color: TextColor, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle1 = TextStyle(
    fontSize: 26,
    color: TextColor,
    fontWeight: FontWeight.bold,
  );
  static TextStyle headLineStyle2 =
      TextStyle(fontSize: 21, color: TextColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle3 = TextStyle(
      fontSize: 17, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle4 = TextStyle(
      fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
}
