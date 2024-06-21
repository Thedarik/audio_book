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

  /// PNG
  static final authLogo = Image.asset(
    '',
    height: 79.h,
    width: 380.w,
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
