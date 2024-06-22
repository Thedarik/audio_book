// ignore_for_file: override_on_non_overriding_member

import 'package:audio_book/src/core/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@immutable
final class AppTextStyle extends TextTheme {
  const AppTextStyle();

  /// eng yaqin son qarab olinadi:
  /// profile

  @override
  TextStyle? get profileTitleLarge => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: FontSize.size16,
        fontFamily: "Rubik",
        color: AppColors.black,
      );

  @override
  TextStyle? get profileTitleMedium => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: FontSize.size14,
        fontFamily: 'Rubik',
        color: AppColors.black,
      );

  @override
  TextStyle? get onlineRecordTitleMedium => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: FontSize.size10,
        fontFamily: 'Rubik',
        color: AppColors.black,
      );

  @override
  TextStyle? get onlineRecordTitleLarge => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: FontSize.size12,
        fontFamily: 'Rubik',
        color: AppColors.black,
      );

  @override
  TextStyle? get profileLabelMedium => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: FontSize.size14,
        fontFamily: 'Rubik',
        color: AppColors.black,
      );

  @override
  TextStyle? get titleSmall => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: FontSize.size10,
        fontFamily: 'Rubik',
        color: AppColors.black,
      );

  @override
  TextStyle? get titleMedium => TextStyle(
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

  @override
  TextStyle? get titleLarge => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: FontSize.size12,
        fontFamily: 'Rubik',
        color: AppColors.black,
      );

  @override
  TextStyle? get labelLarge => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: FontSize.size14,
        fontFamily: 'Rubik',
        color: AppColors.black,
      );

  @override
  TextStyle? get labelMedium => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: FontSize.size14,
        fontFamily: 'Rubik',
        color: AppColors.black,
      );

  @override
  TextStyle? get labelSmall => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: FontSize.size16,
        fontFamily: 'Rubik',
        color: AppColors.black,
      );

  @override
  TextStyle? get bodySmall => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: FontSize.size14,
        fontFamily: 'Rubik',
        color: AppColors.black,
      );

  @override
  TextStyle? get bodyMedium => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: FontSize.size14,
        fontFamily: 'Rubik',
        color: AppColors.black,
      );

  @override
  TextStyle? get bodyLarge => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: FontSize.size14,
        fontFamily: 'Rubik',
        color: AppColors.black,
      );

  @override
  TextStyle? get headline1 => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: FontSize.size14,
        fontFamily: 'Rubik',
        color: AppColors.black,
        letterSpacing: 0.1,
      );

  @override
  TextStyle? get headline2 => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: FontSize.size10,
        fontFamily: 'Rubik',
        color: AppColors.black,
      );

  @override
  TextStyle? get headline3 => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: FontSize.size14,
        fontFamily: 'Rubik',
        color: AppColors.black,
      );

  @override
  TextStyle? get headline4 => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: FontSize.size10,
        fontFamily: 'Rubik',
        color: AppColors.black,
      );

  @override
  TextStyle? get headline5 => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: FontSize.size12,
        fontFamily: 'Rubik',
        color: AppColors.black,
      );

  @override
  TextStyle? get loginTitleSmall => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: FontSize.size20,
        fontFamily: 'Rubik',
        color: AppColors.black,
      );

  @override
  TextStyle? get loginTitleLarge => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: FontSize.size14,
        fontFamily: 'Rubik',
        color: AppColors.black,
      );

  @override
  TextStyle? get registerLabelLarge => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: FontSize.size14,
        fontFamily: 'Rubik',
        color: AppColors.black,
      );

  @override
  TextStyle? get loginLabelMedium => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: FontSize.size12,
        fontFamily: 'Rubik',
        color: AppColors.black,
      );

  @override
  @override
  TextStyle? get loginLabelSmall => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: FontSize.size14,
        fontFamily: 'Rubik',
        color: AppColors.black,
      );

  @override
  TextStyle? get registerBodyMedium => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: FontSize.size14,
        fontFamily: 'Rubik',
        color: AppColors.black,
      );

  @override
  TextStyle? get loginBodyLarge => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: FontSize.size14,
        fontFamily: 'Rubik',
        color: AppColors.black,
      );

  @override
  TextStyle? get loginBodySmall => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: FontSize.size14,
        fontFamily: 'Rubik',
        color: AppColors.black,
      );

  @override
  TextStyle? get headlineSmall => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: FontSize.size16,
        fontFamily: 'Rubik',
        color: AppColors.black,
      );

  @override
  TextStyle? get headlineLarge => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: FontSize.size14,
        fontFamily: 'Rubik',
        color: AppColors.black,
      );

  @override
  TextStyle? get headline6 => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: FontSize.size10,
        fontFamily: 'Rubik',
        color: AppColors.black,
      );

  @override
  TextStyle? get headline7 => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: FontSize.size20,
        fontFamily: 'Rubik',
        color: AppColors.black,
      );

  @override
  TextStyle? get headline8 => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: FontSize.size14,
        fontFamily: 'Rubik',
        color: AppColors.black,
      );

  @override
  TextStyle? get headline9 => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: FontSize.size16,
        fontFamily: 'Rubik',
        color: AppColors.black,
      );

  @override
  TextStyle? get displaySmall => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: FontSize.size16,
        fontFamily: 'Rubik',
        color: AppColors.black,
      );

  @override
  TextStyle? get displayMedium => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: FontSize.size12,
        fontFamily: 'Rubik',
        color: AppColors.black,
      );

  @override
  TextStyle? get displayLarge => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: FontSize.size12,
        fontFamily: 'Rubik',
        color: AppColors.black,
      );

  @override
  TextStyle? get headline10 => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: FontSize.size16,
        fontFamily: 'Rubik',
        color: AppColors.black,
      );

@override
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
