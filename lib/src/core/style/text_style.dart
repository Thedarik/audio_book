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
        color: AppColors.c4838D1,
      );

  /// On Boarding page
  @override
  static TextStyle? get onBoardingTitleLarge => TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: FontSize.size16,
        fontFamily: 'Rubik',
        color: AppColors.c2E2E5D,
      );

  @override
  static TextStyle? get onBoardingSubtitleMedium => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: FontSize.size14,
        fontFamily: 'Rubik',
        color: AppColors.c2E2E5D,
      );

  @override
  static TextStyle? get onBoardingButtonSkipMedium => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: FontSize.size16,
        fontFamily: 'Rubik',
        color: AppColors.c4838D1,
      );

  @override
  static TextStyle? get onBoardingButtonNextMedium => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: FontSize.size16,
        fontFamily: 'Rubik',
        color: AppColors.cFFFFFF,
      );

  /// Login
  @override
  static TextStyle? get loginTitleMedium => TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: FontSize.size16,
        fontFamily: 'Rubik',
        color: AppColors.c2E2E5D,
      );

  static TextStyle? get loginFieldSmall => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: FontSize.size14,
        fontFamily: 'Rubik',
        color: AppColors.cB8B8C7,
      );

  static TextStyle? get loginRememberSmall => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: FontSize.size14,
        fontFamily: 'Rubik',
        color: AppColors.c2E2E5D,
      );

  static TextStyle? get loginLoginButtonMedium => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: FontSize.size16,
        fontFamily: 'Rubik',
        color: AppColors.cFFFFFF,
      );

  static TextStyle? get loginForgotPasswordSmall => TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: FontSize.size14,
        fontFamily: 'Rubik',
        color: AppColors.cF77A55,
      );

  static TextStyle? get loginOrLoginWithSmall => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: FontSize.size14,
        fontFamily: 'Rubik',
        color: AppColors.c2E2E5D,
      );

  static TextStyle? get loginAccountSmall => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: FontSize.size14,
        fontFamily: 'Rubik',
        color: AppColors.c2E2E5D,
      );

  static TextStyle? get loginRegisterSmall => TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: FontSize.size14,
        fontFamily: 'Rubik',
        color: AppColors.cF77A55,
      );

  /// Register page

  static TextStyle? get registerFieldSmall => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: FontSize.size14,
        fontFamily: 'Rubik',
        color: AppColors.cF5F5FA,
      );

  static TextStyle? get registerTermsSmall => TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: FontSize.size14,
        fontFamily: 'Rubik',
        color: AppColors.c2E2E5D,
      );

  static TextStyle? get registerTermsOrangeSmall => TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: FontSize.size14,
        fontFamily: 'Rubik',
        color: AppColors.cF5F5FA,
      );

  static TextStyle? get registerRegisterButtonMedium => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: FontSize.size16,
        fontFamily: 'Rubik',
        color: AppColors.cFFFFFF,
      );

  static TextStyle? get registerCancelButtonMedium => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: FontSize.size16,
        fontFamily: 'Rubik',
        color: AppColors.c4838D1,
      );
//
  /// Confirmation Page
  static TextStyle? get registerConfirmTitleMedium => TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: FontSize.size16,
        fontFamily: 'Rubik',
        color: AppColors.c2E2E5D,
      );

  static TextStyle? get registerConfirmSubtitleSmall => TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: FontSize.size14,
        fontFamily: 'Rubik',
        color: AppColors.c2E2E5D,
      );

  static TextStyle? get registerConfirmFieldSmall => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: FontSize.size14,
        fontFamily: 'Rubik',
        color: AppColors.cF5F5FA,
      );

  static TextStyle? get registerReceiveSmall => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: FontSize.size14,
        fontFamily: 'Rubik',
        color: AppColors.c2E2E5D,
      );
  /// Welcome page

  static TextStyle? get welcomeTextMedium => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: FontSize.size16,
    fontFamily: 'Rubik',
    color: AppColors.cF77A55,
  );

  static TextStyle? get welcomeBigTextLarge => TextStyle(
    fontWeight: FontWeight.w200,
    fontSize: FontSize.size48,
    fontFamily: 'Rubik',
    color: AppColors.c4838D1,
  );

  static TextStyle? get welcomeSubtitleSmall => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size14,
    fontFamily: 'Rubik',
    color: AppColors.c2E2E5D,
  );

  static TextStyle? get welcomeTextMedium => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: FontSize.size16,
    fontFamily: 'Rubik',
    color: AppColors.cF77A55,
  );

  /// Personalization page

  static TextStyle? get personalizationTitleMedium => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: FontSize.size16,
    fontFamily: 'Rubik',
    color: AppColors.c2E2E5D,
  );

  static TextStyle? get personalizationSubtitleSmall => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size14,
    fontFamily: 'Rubik',
    color: AppColors.c2E2E5D,
  );


  static TextStyle? get personalizationCategorySmall => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: FontSize.size14,
    fontFamily: 'Rubik',
    color: AppColors.c4838D1,
  );

  static TextStyle? get personalizationEndTitleMedium => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: FontSize.size16,
    fontFamily: 'Rubik',
    color: AppColors.c2E2E5D,
  );

  static TextStyle? get personalizationEndSubtitleSmall => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size14,
    fontFamily: 'Rubik',
    color: AppColors.c2E2E5D,
  );

  /// Home Page

  static TextStyle? get homeCategoryTextMedium => TextStyle(
    fontFamily: "Rubik",
    fontSize: FontSize.size16,
    fontWeight: FontWeight.w500,
    color: AppColors.c010104,
  );

  static TextStyle? get homeSeeMoreSmall=> TextStyle(
    fontFamily: "Rubik",
    fontSize: FontSize.size14,
    fontWeight: FontWeight.w500,
    color: AppColors.c4838D1,
  );

  static TextStyle? get homeCategoriesMedium => TextStyle(
    fontFamily: "Rubik",
    fontSize: FontSize.size16,
    fontWeight: FontWeight.w400,
    color: AppColors.c2E2E5D,
  );

  static TextStyle? get homeSubtitleSmall => TextStyle(
    fontFamily: "Rubik",
    fontSize: FontSize.size12,
    fontWeight: FontWeight.w400,
    color: AppColors.c6A6A8B,
  );

  static TextStyle? get homeBookNameMedium => TextStyle(
    fontFamily: "Rubik",
    fontSize: FontSize.size16,
    fontWeight: FontWeight.w500,
    color: AppColors.c2E2E5D,
  );

  static TextStyle? get buttomBarTextSmall => TextStyle(
    fontFamily: "Rubik",
    fontSize: FontSize.size10,
    fontWeight: FontWeight.w500,
    color: AppColors.c4838D1,
  );

  /// Search Page


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
  static double size48 = 48.sp;
  static double size14 = 14.sp;
  static double size16 = 16.sp;
  static double size10 = 10.sp;
}
