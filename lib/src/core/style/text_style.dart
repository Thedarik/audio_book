// ignore_for_file: override_on_non_overriding_member

import 'package:audio_book/src/core/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@immutable
final class AppTextStyle extends TextTheme {
  const AppTextStyle();

  /// eng yaqin son qarab olinadi:
  @override
  static TextStyle? get profileTitleLarge => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: FontSize.size16,
        fontFamily: 'Rubik',
        color: AppColors.black,
      );

  /// Splash Page
  @override
  static TextStyle? get splashVersionLabelLarge => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: FontSize.size14,
    fontFamily: 'Rubik',
    color: AppColors.primary50,
  );

  /// On Boarding page
  @override
  static TextStyle? get onBoardingTitleLarge => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: FontSize.size16,
    fontFamily: 'Rubik',
    color: AppColors.neutral80,
  );

  @override
  static TextStyle? get onBoardingSubtitleMedium => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size14,
    fontFamily: 'Rubik',
    color: AppColors.neutral80,
  );

  @override
  static TextStyle? get onBoardingButtonSkipMedium => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: FontSize.size16,
    fontFamily: 'Rubik',
    color: AppColors.primary50,
  );

  @override
  static TextStyle? get onBoardingButtonNextMedium => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: FontSize.size16,
    fontFamily: 'Rubik',
    color: AppColors.neutralWhite,
  );

  /// Login
  @override
  static TextStyle? get loginTitleMedium => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: FontSize.size16,
    fontFamily: 'Rubik',
    color: AppColors.neutral80,
  );

  static TextStyle? get loginFieldSmall => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: FontSize.size14,
    fontFamily: 'Rubik',
    color: AppColors.neutral40,
  );

  static TextStyle? get loginRememberSmall => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size14,
    fontFamily: 'Rubik',
    color: AppColors.neutral80,
  );

  static TextStyle? get loginLoginButtonMedium => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: FontSize.size16,
    fontFamily: 'Rubik',
    color: AppColors.neutral80,
  );

  static TextStyle? get loginForgotPasswordSmall => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: FontSize.size14,
    fontFamily: 'Rubik',
    color: AppColors.accent50,
  );

  static TextStyle? get loginOrLoginWithSmall => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size14,
    fontFamily: 'Rubik',
    color: AppColors.neutral80,
  );

  static TextStyle? get loginAccountSmall => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size14,
    fontFamily: 'Rubik',
    color: AppColors.neutral80,
  );

  static TextStyle? get loginRegisterSmall => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: FontSize.size14,
    fontFamily: 'Rubik',
    color: AppColors.accent50,
  );

  /// Register page

  static TextStyle? get registerFieldSmall => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: FontSize.size14,
    fontFamily: 'Rubik',
    color: AppColors.neutral40,
  );

  static TextStyle? get registerTermsSmall => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: FontSize.size14,
    fontFamily: 'Rubik',
    color: AppColors.neutral80,
  );

  static TextStyle? get registerTermsOrangeSmall => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: FontSize.size14,
    fontFamily: 'Rubik',
    color: AppColors.accent50,
  );

  static TextStyle? get registerRegisterButtonMedium => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: FontSize.size16,
    fontFamily: 'Rubik',
    color: AppColors.neutralWhite,
  );

  static TextStyle? get registerCancelButtonMedium => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: FontSize.size16,
    fontFamily: 'Rubik',
    color: AppColors.primary50,
  );

  /// Confirmation Page
  static TextStyle? get registerConfirmTitleMedium => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: FontSize.size16,
    fontFamily: 'Rubik',
    color: AppColors.neutral80,
  );

  static TextStyle? get registerConfirmSubtitleSmall => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: FontSize.size14,
    fontFamily: 'Rubik',
    color: AppColors.neutral80,
  );

  static TextStyle? get registerConfirmFieldSmall => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: FontSize.size14,
    fontFamily: 'Rubik',
    color: AppColors.neutral40,
  );

  static TextStyle? get registerReceiveSmall => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size14,
    fontFamily: 'Rubik',
    color: AppColors.neutral80,
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
