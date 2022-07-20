import 'package:flutter/material.dart';

class AppColors {
  ///====================== Solid Colors ============================

  static const back1Color = Color(0xFF232542);
  static const back2Color = Color(0xFF353754);
  static const back3Color = Color(0xFF555874);
  static const tabBackColor = Color(0xFF494A6D);
  static const ctaBackColor = Color(0xFF29325F);
  static const ctaTextColor = Color(0xFF07CBFD);
  static const ctaBlueColor = Color(0xFF055FFC);
  static const lightBlueColor = Color(0xFF3D8CFF);
  static const linesColor = Color(0xFFA8A9B7);
  static const textColor = Color(0xFFD1D1DA);
  static const iconColor = Color(0xFFC7C8D2);
  static const lightOrangeColor = Color(0xFFFFAD88);
  static const lightTurquoiseColor = Color(0xFF72DFFF);
  static const whiteColor = Color(0xFFFFFFFF);
  static const redColor = Color(0xFFFF7B7B);
  static const orangeColor = Color(0xFFFFA26D);
  static const yellowColor = Color(0xFFFFE792);
  static const greenColor = Color(0xFF39E262);
  static const turquoiseColor = Color(0xFF6DD4FF);
  static const redBackColor = Color(0xFF442F48);
  static const orangeBackColor = Color(0xFF443748);
  static const yellowBackColor = Color(0xFF4A4B63);
  static const greenBackColor = Color(0xFF274147);
  static const turquoiseBackColor = Color(0xFF324868);

  ///====================== Back Gradient Colors ==========================

  static const backGradient1Color = LinearGradient(colors: [
    Color(0xFF252842),
    Color(0xFF3B3D5E),
  ], begin: Alignment.bottomCenter, end: Alignment.topCenter);
  static const backGradient2Color = LinearGradient(
      colors: [Color(0xFF414267), Color(0xFF353954)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter);

  ///====================== Border Gradient Colors ==========================

  static const borderGradientColor = LinearGradient(
      colors: [Color(0xFF4B4C6F), Color(0xFF666982)],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight);
  static const borderGradientColorRightToLeft = LinearGradient(
      colors:  [Color(0xFF666982),Color(0xFF4B4C6F)],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight);
  static const ctaBorderGradientColor = LinearGradient(
      colors: [Color(0xFF07CBFD), Color(0xFF055FFC)],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight);
}
