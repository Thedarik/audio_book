// ignore_for_file: override_on_non_overriding_member

import 'package:audio_book/src/core/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@immutable
final class AppTextStyle extends TextTheme {
  const AppTextStyle();

  /// eng yaqin son qarab olinadi:
  @override
  TextStyle? get profileTitleLarge => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: FontSize.size16,
        fontFamily: 'Rubik',
        color: AppColors.white,
      );
}

@immutable
final class FontSize {
  const FontSize._();

  static double size24 = 24.sp;
  static double size32 = 32.sp;
  static double size22 = 22.sp;
  static double size20 = 20.sp;
  static double size18 = 18.sp;
  static double size12 = 12.sp;
  static double size11 = 11.sp;
  static double size8 = 8.sp;
  static double size14 = 14.sp;
  static double size16 = 16.sp;
  static double size10 = 10.sp;
}
