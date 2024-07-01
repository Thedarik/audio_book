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
        fontFamily: 'Poppins',
        color: AppColors.c2E2E5D,
      );

  @override
  static TextStyle? get onBoardingSubtitleMedium => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: FontSize.size14,
        fontFamily: 'Poppins',
        color: AppColors.c2E2E5D,
      );

  @override
  static TextStyle? get onBoardingButtonSkipMedium => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: FontSize.size16,
        fontFamily: 'Poppins',
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
        fontFamily: 'Poppins',
        color: AppColors.c2E2E5D,
      );

  @override
  static TextStyle? get loginTitleMedium2 => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: FontSize.size16,
    fontFamily: 'Poppins',
    color: AppColors.c2E2E5D,
  );

  @override
  static TextStyle? get loginFieldSmall => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: FontSize.size14,
        fontFamily: 'Poppins',
        color: AppColors.cB8B8C7,
      );

  @override
  static TextStyle? get loginRememberSmall => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: FontSize.size14,
        fontFamily: 'Poppins',
        color: AppColors.c2E2E5D,
      );

  @override
  static TextStyle? get loginLoginButtonMedium => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: FontSize.size16,
        fontFamily: 'Poppins',
        color: AppColors.cFFFFFF,
      );

  @override
  static TextStyle? get loginForgotPasswordSmall => TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: FontSize.size14,
        fontFamily: 'Poppins',
        color: AppColors.cF77A55,
      );

  @override
  static TextStyle? get loginForgotPasswordOffSmall => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size14,
    fontFamily: 'Poppins',
    color: AppColors.c2E2E5D,
  );
  @override
  static TextStyle? get loginOrLoginWithSmall => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: FontSize.size14,
        fontFamily: 'Poppins',
        color: AppColors.c2E2E5D,
      );

  @override
  static TextStyle? get loginAccountSmall => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: FontSize.size14,
        fontFamily: 'Poppins',
        color: AppColors.c2E2E5D,
      );

  @override
  static TextStyle? get loginAccountSmall2 => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: FontSize.size14,
    fontFamily: 'Poppins',
    color: AppColors.cF77A55,
  );


  @override
  static TextStyle? get loginRegisterSmall => TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: FontSize.size14,
        fontFamily: 'Poppins',
        color: AppColors.cF77A55,
      );

  /// Register page

  @override
  static TextStyle? get registerFieldSmall => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: FontSize.size14,
        fontFamily: 'Poppins',
        color: AppColors.cF5F5FA,
      );

  @override
  static TextStyle? get registerTermsSmall => TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: FontSize.size14,
        fontFamily: 'Poppins',
        color: AppColors.c2E2E5D,
      );
  @override
  static TextStyle? get registerTerms2Small => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size14,
    fontFamily: 'Poppins',
    color: AppColors.c2E2E5D,
  );

  @override
  static TextStyle? get registerTermsOrangeSmall => TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: FontSize.size14,
        fontFamily: 'Poppins',
        color: AppColors.cF77A55  ,
      );

  @override
  static TextStyle? get registerRegisterButtonMedium => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: FontSize.size16,
        fontFamily: 'Poppins',
        color: AppColors.cFFFFFF,
      );

  @override
  static TextStyle? get registerCancelButtonMedium => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: FontSize.size16,
        fontFamily: 'Poppins',
        color: AppColors.c4838D1,
      );


  /// Confirmation Page
  @override
  static TextStyle? get registerConfirmTitleMedium => TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: FontSize.size16,
        fontFamily: 'Rubik',
        color: AppColors.c2E2E5D,
      );

  @override
  static TextStyle? get registerConfirmSubtitleSmall => TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: FontSize.size14,
        fontFamily: 'Rubik',
        color: AppColors.c2E2E5D,
      );

  @override
  static TextStyle? get registerConfirmFieldSmall => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: FontSize.size14,
        fontFamily: 'Rubik',
        color: AppColors.cF5F5FA,
      );

  @override
  static TextStyle? get registerReceiveSmall => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: FontSize.size14,
        fontFamily: 'Rubik',
        color: AppColors.c2E2E5D,
      );

  /// Welcome page

  @override
  static TextStyle? get welcomeTextMedium => TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: FontSize.size16,
        fontFamily: 'Poppins',
        color: AppColors.cF77A55,
      );

  @override
  static TextStyle? get welcomeBigTextLarge => TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: FontSize.size48,
        fontFamily: 'Rubik-Light.ttf',
        color: AppColors.c4838D1,
      );

  @override
  static TextStyle? get welcomeSubtitleSmall => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: FontSize.size14,
        fontFamily: 'Poppins',
        color: AppColors.c2E2E5D,
      );

  /// Personalization page

  @override
  static TextStyle? get personalizationTitleMedium => TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: FontSize.size16,
        fontFamily: 'Poppins',
        color: AppColors.c2E2E5D,
      );

  @override
  static TextStyle? get personalizationSubtitleSmall => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: FontSize.size14,
        fontFamily: 'Poppins',
        color: AppColors.c2E2E5D,
      );

  @override
  static TextStyle? get personalizationCategorySmall => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: FontSize.size14,
        fontFamily: 'Poppins',
        color: AppColors.c4838D1,
      );

  @override
  static TextStyle? get personalizationCategorySmall2 => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: FontSize.size14,
    fontFamily: 'Poppins',
    color: AppColors.c4838D1,
  );

  @override
  static TextStyle? get personalizationCategorySmall3 => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: FontSize.size13,
    fontFamily: 'Poppins',
    color: AppColors.c4838D1,
  );

  @override
  static TextStyle? get personalizationEndTitleMedium => TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: FontSize.size16,
        fontFamily: 'Poppins',
        color: AppColors.c2E2E5D,
      );

  @override
  static TextStyle? get personalizationEndTwoTitleMedium => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: FontSize.size14,
    fontFamily: 'Poppins',
    color: AppColors.c2E2E5D,
  );

  @override
  static TextStyle? get personalizationEndSubtitleSmall => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: FontSize.size14,
        fontFamily: 'Poppins',
        color: AppColors.c2E2E5D,
      );

  /// Home Page

  @override
  static TextStyle? get homeCategoryTextMedium => TextStyle(
        fontFamily: "Rubik",
        fontSize: FontSize.size16,
        fontWeight: FontWeight.w500,
        color: AppColors.c010104,
      );

  @override
  static TextStyle? get homeSeeMoreSmall => TextStyle(
        fontFamily: "Rubik",
        fontSize: FontSize.size14,
        fontWeight: FontWeight.w500,
        color: AppColors.c4838D1,
      );

  @override
  static TextStyle? get homeCategoriesMedium => TextStyle(
        fontFamily: "Rubik",
        fontSize: FontSize.size16,
        fontWeight: FontWeight.w400,
        color: AppColors.c2E2E5D,
      );

  @override
  static TextStyle? get homeSubtitleSmall => TextStyle(
        fontFamily: "Rubik",
        fontSize: FontSize.size12,
        fontWeight: FontWeight.w400,
        color: AppColors.c6A6A8B,
      );

  @override
  static TextStyle? get homeBookNameMedium => TextStyle(
        fontFamily: "Rubik",
        fontSize: FontSize.size16,
        fontWeight: FontWeight.w500,
        color: AppColors.c2E2E5D,
      );

  @override
  static TextStyle? get bottomBarTextSmall => TextStyle(
        fontFamily: "Rubik",
        fontSize: FontSize.size10,
        fontWeight: FontWeight.w500,
        color: AppColors.c4838D1,
      );

  /// Search Page

  @override
  static TextStyle? get searchTitleLarge => TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: FontSize.size24,
        fontFamily: "Rubik",
        color: AppColors.c010104,
      );

  @override
  static TextStyle? get searchRecommendationMedium => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: FontSize.size16,
        fontFamily: "Rubik",
        color: AppColors.c010104,
      );

  @override
  static TextStyle? get searchCategoryMedium => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: FontSize.size16,
        fontFamily: "Rubik",
        color: AppColors.c2E2E5D,
      );

  @override
  static TextStyle? get searchBookNameMedium => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: FontSize.size16,
        fontFamily: "Rubik",
        color: AppColors.c2E2E5D,
      );

  @override
  static TextStyle? get searchBookNameSubtitleSmall => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: FontSize.size12,
        fontFamily: "Rubik",
        color: AppColors.c4838D1,
      );

  /// Detail Page

  @override
  static TextStyle? get detailAppBarTextMedium => TextStyle(
      fontFamily: "Rubik",
      fontSize: FontSize.size16,
      fontWeight: FontWeight.w500,
      color: AppColors.c2E2E5D);

  @override
  static TextStyle? get detailBookNameLarge => TextStyle(
      fontFamily: "Rubik",
      fontSize: FontSize.size20,
      fontWeight: FontWeight.w500,
      color: AppColors.c010104);

  @override
  static TextStyle? get detailBookSubtitleMedium => TextStyle(
        fontFamily: "Rubik",
        fontSize: FontSize.size16,
        fontWeight: FontWeight.w400,
        color: AppColors.c9292A2,
      );

  @override
  static TextStyle? get detailCategorySmall => TextStyle(
      fontFamily: "Rubik",
      fontSize: FontSize.size12,
      fontWeight: FontWeight.w600,
      color: AppColors.c6A6A8B);

  @override
  static TextStyle? get detailButtonPlaySmall => TextStyle(
      fontFamily: "Rubik",
      fontSize: FontSize.size14,
      fontWeight: FontWeight.w500,
      color: AppColors.cFFFFFF);

  @override
  static TextStyle? get detailButtonReadSmall => TextStyle(
      fontFamily: "Rubik",
      fontSize: FontSize.size14,
      fontWeight: FontWeight.w500,
      color: AppColors.c4838D1);

  @override
  static TextStyle? get detailSummarySmall => TextStyle(
        fontFamily: "Rubik",
        fontSize: FontSize.size14,
        fontWeight: FontWeight.w600,
        color: AppColors.c2E2E5D,
      );

  @override
  static TextStyle? get detailSummaryTextSmall => TextStyle(
      fontFamily: "Rubik",
      fontSize: FontSize.size14,
      fontWeight: FontWeight.w300,
      color: AppColors.c6A6A8B);

  @override
  static TextStyle? get detailViewMoreSmall => TextStyle(
      fontFamily: "Rubik",
      fontSize: FontSize.size14,
      fontWeight: FontWeight.w500,
      color: AppColors.cF77A55);

  @override
  static TextStyle? get detailAudioTitleMedium => TextStyle(
      fontFamily: "Rubik",
      fontSize: FontSize.size16,
      fontWeight: FontWeight.w500,
      color: AppColors.c010104);

  @override
  static TextStyle? get detailAudioSubtitleMedium => TextStyle(
      fontFamily: "Rubik",
      fontSize: FontSize.size16,
      fontWeight: FontWeight.w400,
      color: AppColors.c6A6A8B,
  );

  /// Read Mode page

  @override
  static TextStyle? get readTextMedium => TextStyle(
        fontSize: FontSize.size16,
        fontWeight: FontWeight.w300,
        fontFamily: "Rubik",
        color: AppColors.c000000,
      );

  @override
  static TextStyle? get readTextTitleMedium => TextStyle(
    fontSize: FontSize.size16,
    fontWeight: FontWeight.w500,
    fontFamily: "Rubik",
    color: AppColors.c2E2E5D,
  );

  /// Library Page

  @override
  static TextStyle? get libraryTitleLarge => TextStyle(
    fontFamily: 'Rubik',
    fontWeight: FontWeight.w600,
    fontSize: FontSize.size24,
    color: AppColors.c010104,
  );

  @override
  static TextStyle? get libraryBookNameMedium => TextStyle(
    fontFamily: 'Rubik',
    fontWeight: FontWeight.w500,
    fontSize: FontSize.size16,
    color: AppColors.c010104,
  );

  @override
  static TextStyle? get libraryBookSubtitleSubtitleSmall => TextStyle(
    fontFamily: 'Rubik',
    fontWeight: FontWeight.w400,
    fontSize: FontSize.size12,
    color: AppColors.c010104,
  );

  /// Subscriptions page

  @override
  static TextStyle? get subscriptionFenceTextMedium => TextStyle(
    fontFamily: 'Rubik',
    fontSize: FontSize.size16,
    fontWeight: FontWeight.w400,
    color: AppColors.cFFFFFF,
  );

  @override
  static TextStyle? get subscriptionTitleLarge => TextStyle(
    fontFamily: 'Rubik',
    fontSize: FontSize.size32,
    fontWeight: FontWeight.w600,
    color: AppColors.cFFFFFF,
  );

  @override
  static TextStyle? get subscriptionSubscribeTextSmall => TextStyle(
    fontFamily: 'Rubik',
    fontSize: FontSize.size12,
    fontWeight: FontWeight.w400,
    color: AppColors.cFFFFFF,
  );

  @override
  static TextStyle? get subscriptionTakeTextLarge => TextStyle(
    fontFamily: 'Rubik',
    fontSize: FontSize.size24,
    fontWeight: FontWeight.w600,
    color: AppColors.c4838D1,
  );

  @override
  static TextStyle? get subscriptionTakeSubtitleMedium => TextStyle(
    fontFamily: 'Rubik',
    fontSize: FontSize.size16,
    fontWeight: FontWeight.w400,
    color: AppColors.c010104,
  );

  @override
  static TextStyle? get subscriptionBottomTextsLarge => TextStyle(
    fontFamily: 'Rubik',
    fontSize: FontSize.size16,
    fontWeight: FontWeight.w400,
    color: AppColors.c6A6A8B,
  );

  @override
  static TextStyle? get subscriptionPriceTextsLarge => TextStyle(
    fontFamily: 'Rubik',
    fontSize: FontSize.size24,
    fontWeight: FontWeight.w600,
    color: AppColors.cFFFFFF,
  );

  /// Settings Page

  @override
  static TextStyle? get settingProfileNameMedium => TextStyle(
    fontFamily: 'Rubik',
    fontSize: FontSize.size16,
    fontWeight: FontWeight.w500,
    color: AppColors.c2E2E5D,
  );

  @override
  static TextStyle? get settingProfileViewSmall => TextStyle(
    fontFamily: 'Rubik',
    fontSize: FontSize.size12,
    fontWeight: FontWeight.w400,
    color: AppColors.c4838D1,
  );

  @override
  static TextStyle? get settingProfileTextsSmall => TextStyle(
    fontFamily: 'Rubik',
    fontSize: FontSize.size14,
    fontWeight: FontWeight.w400,
    color: AppColors.c2E2E5D,
  );

  @override
  static TextStyle? get settingProfileLogOutMedium => TextStyle(
    fontFamily: 'Rubik',
    fontSize: FontSize.size16,
    fontWeight: FontWeight.w500,
    color: AppColors.cF77A55,
  );

  @override
  static TextStyle? get settingProfileEditTextsSmall => TextStyle(
    fontFamily: 'Rubik',
    fontSize: FontSize.size14,
    fontWeight: FontWeight.w500,
    color: AppColors.cF77A55,
  );

  @override
  static TextStyle? get settingProfileSaveMedium => TextStyle(
    fontFamily: 'Rubik',
    fontSize: FontSize.size16,
    fontWeight: FontWeight.w500,
    color: AppColors.c4838D1,
  );

  /// Player page

  @override
  static TextStyle? get playerBookNameLarge => TextStyle(
    fontSize: FontSize.size20,
    fontWeight: FontWeight.w500,
    fontFamily: "Rubik",
    color: AppColors.c010104,
  );

  @override
  static TextStyle? get playerBookSubtitleMedium => TextStyle(
    fontSize: FontSize.size16,
    fontWeight: FontWeight.w400,
    fontFamily: "Rubik",
    color: AppColors.c010104,
  );

  @override
  static TextStyle? get playerTimeSmall => TextStyle(
    fontSize: FontSize.size10,
    fontWeight: FontWeight.w400,
    fontFamily: "Rubik",
    color: AppColors.cBBB1FA,
  );

  @override
  static TextStyle? get playerBottomTextsSmall => TextStyle(
    fontSize: FontSize.size10,
    fontWeight: FontWeight.w400,
    fontFamily: "Rubik",
    color: AppColors.cBBB1FA,
  );

}

@immutable
final class FontSize {
  const FontSize._();

  static double size24 = 24.sp;
  static double size13 = 13.sp;
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
