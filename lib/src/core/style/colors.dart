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

  static const primary50 = Color.fromRGBO(72, 56, 209, 1);
  static const neutral5 = Color.fromRGBO(245, 245, 250, 1);
  static const neutralBlack = Color.fromRGBO(1, 1, 4, 1);
  static const accent50 = Color.fromRGBO(247, 122, 85, 1);
  static const neutral60 = Color.fromRGBO(106, 106, 139, 1);
  static const l0001 = Color.fromRGBO(0, 0, 0, 1);
  static const neutral80 = Color.fromRGBO(46, 46, 93, 1);
  static const neutral20 = Color.fromRGBO(213, 213, 227, 1);
  static const neutralWhite = Color.fromRGBO(255, 255, 255, 1);
  static const neutral50 = Color.fromRGBO(146, 146, 162, 1);
  static const neutral40 = Color.fromRGBO(184, 184, 199, 1);
  // static const neutralWhite = Color.fromRGBO(255, 255, 255, 1);

  // gredients
}
