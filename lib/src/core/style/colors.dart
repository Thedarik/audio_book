import 'dart:ui';

import 'package:flutter/foundation.dart';

@immutable
sealed class AppColors {
  static bool hh = false;

  // main color
  static const transparent = Color(0x00000000);
  static const white = Color(0xffffffff);
  static const black = Color(0xFF000000);
  static const red = Color(0xFFFF0000);
  static const green = Color(0xFF03c04a);
  static const grey = Color.fromRGBO(185, 183, 208, 0.50);
  static const deepGrey = Color.fromRGBO(115, 124, 134, 0.20);
  static const boxShadowColor = Color.fromRGBO(0, 0, 0, 0.08);

  // every colors

  //Primary
  static const primary5 = Color.fromRGBO(243, 241, 254, 1);
  static const primary10 = Color.fromRGBO(221, 215, 252, 1);
  static const primary20 = Color.fromRGBO(187, 177, 250, 1);
  static const primary30 = Color.fromRGBO(148, 135, 241, 1);
  static const primary40 = Color.fromRGBO(116, 102, 227, 1);
  static const primary50 = Color.fromRGBO(72, 56, 209, 1);
  static const primary60 = Color.fromRGBO(53, 40, 179, 1);
  static const primary70 = Color.fromRGBO(38, 28, 150, 1);
  static const primary80 = Color.fromRGBO(25, 17, 121, 1);
  static const primary90 = Color.fromRGBO(16, 10, 100, 1);
  static const primary100 = Color.fromRGBO(9, 6, 56, 1);

  // Accent
  static const accent5 = Color.fromRGBO(255, 250, 245, 1);
  static const accent10 = Color.fromRGBO(254, 238, 221, 1);
  static const accent20 = Color.fromRGBO(254, 217, 187, 1);
  static const accent30 = Color.fromRGBO(252, 190, 153, 1);
  static const accent40 = Color.fromRGBO(250, 164, 127, 1);
  static const accent50 = Color.fromRGBO(247, 122, 85, 1);
  static const accent60 = Color.fromRGBO(212, 85, 62, 1);
  static const accent70 = Color.fromRGBO(177, 54, 42, 1);
  static const accent80 = Color.fromRGBO(143, 28, 27, 1);
  static const accent90 = Color.fromRGBO(118, 16, 22, 1);
  static const accent100 = Color.fromRGBO(72, 10, 13, 1);

  //Neutral
  static const neutral5 = Color.fromRGBO(245, 245, 250, 1);
  static const neutral10 = Color.fromRGBO(235, 235, 245, 1);
  static const neutral20 = Color.fromRGBO(213, 213, 227, 1);
  static const neutral30 = Color.fromRGBO(184, 184, 199, 1);
  static const neutral40 = Color.fromRGBO(184, 184, 199, 1);
  static const neutral50 = Color.fromRGBO(146, 146, 162, 1);
  static const neutral60 = Color.fromRGBO(106, 106, 139, 1);
  static const neutral70 = Color.fromRGBO(73, 73, 116, 1);
  static const neutral80 = Color.fromRGBO(46, 46, 93, 1);
  static const neutral90 = Color.fromRGBO(28, 28, 77, 1);
  static const neutral100 = Color.fromRGBO(15, 15, 41, 1);

  //Black and White
  static const neutralWhite = Color.fromRGBO(255, 255, 255, 1);
  static const neutralBlack = Color.fromRGBO(1, 1, 4, 1);

  // gredients
}
