import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

@immutable
sealed class AppImages {
  const AppImages._();

  /// SVG
  static final googleIcon = SvgPicture.asset(
    'assets/icons/logos_google.svg',
    height: 24.h,
    width: 24.w,
    fit: BoxFit.cover,
  );

  static final starFilledIcon = SvgPicture.asset(
    'assets/icons/filled_star_icon.svg',
    height: 16.h,
    width: 16.w,
    fit: BoxFit.cover,
  );

  static final starOutlinedIcon = SvgPicture.asset(
    'assets/icons/outlined_star_icon.svg',
    height: 16.h,
    width: 16.w,
    fit: BoxFit.cover,
  );

  static final businessIcon = SvgPicture.asset(
    'assets/icons/business_icon.svg',
    height: 24.h,
    width: 24.w,
    fit: BoxFit.cover,
  );

  static final musicsIcon = SvgPicture.asset(
    'assets/icons/musics_icon.svg',
    height: 24.h,
    width: 24.w,
    fit: BoxFit.cover,
  );

  static final miniPlayIcon = SvgPicture.asset(
    'assets/icons/mini_play_icon.svg',
    height: 25.h,
    width: 25.w,
    fit: BoxFit.cover,
  );

  static final miniLibraryIcon = SvgPicture.asset(
    'assets/icons/mini_library_icon.svg',
    height: 20.h,
    width: 20.w,
    fit: BoxFit.cover,
  );

  static final personalIcon = SvgPicture.asset(
    'assets/icons/personal_icon.svg',
    height: 24.h,
    width: 24.w,
    fit: BoxFit.cover,
  );

  static final photographyIcon = SvgPicture.asset(
    'assets/icons/photography_icon.svg',
    height: 24.h,
    width: 24.w,
    fit: BoxFit.cover,
  );

  static final activeHomeIcon = SvgPicture.asset(
    'assets/icons/active_home_icon.svg',
    height: 24.h,
    width: 24.w,
    fit: BoxFit.cover,
  );

  static final inActiveHomeIcon = SvgPicture.asset(
    'assets/icons/inactive_home_icon.svg',
    height: 24.h,
    width: 24.w,
    fit: BoxFit.cover,
  );

  static final inActiveSearchIcon = SvgPicture.asset(
    'assets/icons/inactive_search_icon.svg',
    height: 24.h,
    width: 24.w,
    fit: BoxFit.cover,
  );

  static final activeSearchIcon = SvgPicture.asset(
    'assets/icons/active_search_icon.svg',
    height: 24.h,
    width: 24.w,
    fit: BoxFit.cover,
  );

  static final inActiveLibraryIcon = SvgPicture.asset(
    'assets/icons/inactive_library_icon.svg',
    height: 24.h,
    width: 24.w,
    fit: BoxFit.cover,
  );

  static final activeLibraryIcon = SvgPicture.asset(
    'assets/icons/active_library_icon.svg',
    height: 24.h,
    width: 24.w,
    fit: BoxFit.cover,
  );

  static final leftCircleIcon = SvgPicture.asset(
    'assets/icons/left_circle_icon.svg',
    height: 33.h,
    width: 33.w,
    fit: BoxFit.cover,
  );

  static final rightCircleIcon = SvgPicture.asset(
    'assets/icons/right_circle_icon.svg',
    height: 33.h,
    width: 33.w,
    fit: BoxFit.cover,
  );

  static final facebookIcon = SvgPicture.asset(
    'assets/icons/logos_facebook.svg',
    height: 24.h,
    width: 24.w,
    fit: BoxFit.cover,
  );

  static final twitterIcon = SvgPicture.asset(
    'assets/icons/logos_twitter.svg',
    height: 24.h,
    width: 24.w,
    fit: BoxFit.cover,
  );

  static final mainLogoIcon = SvgPicture.asset(
    'assets/icons/main_logo.svg',
    fit: BoxFit.cover,
  );

  static final playIcon = SvgPicture.asset(
    'assets/icons/play_icon.svg',
    height: 60.h,
    width: 60.w,
    fit: BoxFit.cover,
  );

  static final settingIcon = SvgPicture.asset(
    'assets/icons/setting_icon.svg',
    height: 24.h,
    width: 24.w,
    fit: BoxFit.cover,
  );

  static final uploadIcon = SvgPicture.asset(
    'assets/icons/upload_icon.svg',
    height: 24.h,
    width: 24.w,
    fit: BoxFit.cover,
  );

  static final volumeUpIcon = SvgPicture.asset(
    'assets/icons/volume_up_icon.svg',
    height: 24.h,
    width: 24.w,
    fit: BoxFit.cover,
  );

  static final blueStrokeImage = SvgPicture.asset(
    'assets/icons/blue_stroke_image.svg',
    fit: BoxFit.cover,
  );

  static final deviceImage = SvgPicture.asset(
    'assets/images/device_image.svg',
    fit: BoxFit.cover,
  );

  static final onBoardingFirstImage = SvgPicture.asset(
    'assets/icons/first_boarding_image (2).svg',
    height: 260.h,
    width: 260.w,
    fit: BoxFit.cover,
  );

  static final onBoardingSecondImage = SvgPicture.asset(
    'assets/icons/on_boarding_two.svg',
    height: 260.h,
    width: 260.w,
    fit: BoxFit.cover,
  );

  static final onBoardingThirdImage = SvgPicture.asset(
    'assets/icons/on_boarding_three.svg',
    height: 260.h,
    width: 260.w,
    fit: BoxFit.cover,
  );

  /// PNG
  static final authLogo = SvgPicture.asset(
    'assets/icons/small_logo.svg',
    fit: BoxFit.cover,
  );

  static final circleImage = Image.asset(
    'assets/images/circle_image.png',
    fit: BoxFit.cover,
  );

  static final errorImage = Image.asset(
    'assets/images/error_image.png',
    height: 260.h,
    width: 260.w,
    fit: BoxFit.cover,
  );

  static final finishingPageImage = Image.asset(
    'assets/images/finishing_page_image.png',
    height: 260.h,
    width: 260.w,
    fit: BoxFit.cover,
  );

  static final firstBoardingImage = Image.asset(
    'assets/images/first_boarding_image.png',
    height: 260.h,
    width: 260.w,
    fit: BoxFit.cover,
  );

  static final secondBoardingImage = Image.asset(
    'assets/images/second_boarding_iamge.png',
    height: 260.h,
    width: 260.w,
    fit: BoxFit.cover,
  );

  static final thirdBoardingImage = Image.asset(
    'assets/images/third_boarding_image.png',
    height: 260.h,
    width: 260.w,
    fit: BoxFit.cover,
  );

  static final subscribeBannerImage = Image.asset(
    'assets/images/third_boarding_image.png',
    height: 339.h,
    width: 327.w,
    fit: BoxFit.cover,
  );

  static final priceBannerImage = Image.asset(
    'assets/images/third_boarding_image.png',
    height: 134.h,
    width: 327.w,
    fit: BoxFit.cover,
  );
}

extension Extension on Image {
  Image copyWith({
    double? width,
    double? height,
    BoxFit? fit,
    Color? color,
  }) =>
      Image(
        image: image,
        width: width ?? this.width,
        height: height ?? this.height,
        fit: fit ?? this.fit,
        color: color ?? this.color,
      );
}
