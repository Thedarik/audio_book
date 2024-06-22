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

  /// every color
  static const c4838D1 = Color(0xFF4838D1);
  static const c2E2E5D = Color(0xFF2E2E5D);
  static const cFFFFFF = Color(0xFFFFFFFF);
  static const cB2ABEB = Color(0xFFB2ABEB);
  static const cF5F5FA = Color(0xFFF5F5FA);
  static const cF77A55 = Color(0xFFF77A55);
  static const c6A6A8B = Color(0xFF6A6A8B);
  static const c010104 = Color(0xFF010104);
  static const c000000 = Color(0xFF000000);
  static const cB8B8C7 = Color(0xFFB8B8C7);

  /// The master color
  static const cFF0000 = Color(0xFFFF0000);
  static const cFF7A00 = Color(0xFFFF7A00);
  static const cFFF500 = Color(0xFFFFF500);
  static const c42FF00 = Color(0xFF42FF00);
  static const c0057FF = Color(0xFF0057FF);
}
