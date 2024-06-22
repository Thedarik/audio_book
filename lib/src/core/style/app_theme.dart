// TODO Implement this library.import "package:flutter/foundation.dart";
import "dart:ui";

import "package:flutter/material.dart";

import "colors.dart";
import "text_style.dart";

@immutable
final class AppTheme {
  /// {@macro app_theme}
  AppTheme({required this.mode})
      : darkTheme = ThemeData(
          textTheme: const AppTextStyle(),
          brightness: Brightness.dark,
          appBarTheme: const AppBarTheme(
            backgroundColor: AppColors.black,
          ),
          useMaterial3: true,
        ),
        lightTheme = ThemeData(
          textTheme: const AppTextStyle(),
          brightness: Brightness.light,
          scaffoldBackgroundColor: AppColors.white,
          appBarTheme: const AppBarTheme(
            backgroundColor: AppColors.white,
            elevation: 0,
            iconTheme: IconThemeData(
              color: AppColors.black,
            ),
            surfaceTintColor: AppColors.white,
          ),
          useMaterial3: true,
        );

  final ThemeMode mode;
  final ThemeData darkTheme;
  final ThemeData lightTheme;

  static ThemeData light() => ThemeData(
        textTheme: const AppTextStyle(),
        brightness: Brightness.light,
        scaffoldBackgroundColor: AppColors.white,
        appBarTheme: const AppBarTheme(
            backgroundColor: AppColors.white,
            elevation: 0,
            surfaceTintColor: AppColors.white),
        useMaterial3: true,
      );

  static ThemeData dark() => ThemeData(
        textTheme: const AppTextStyle(),
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.black,
        ),
        useMaterial3: true,
      );

  ThemeData computeTheme() {
    switch (mode) {
      case ThemeMode.light:
        return lightTheme;
      case ThemeMode.dark:
        return darkTheme;
      case ThemeMode.system:
        return PlatformDispatcher.instance.platformBrightness == Brightness.dark
            ? darkTheme
            : lightTheme;
    }
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppTheme &&
          runtimeType == other.runtimeType &&
          mode == other.mode;

  @override
  int get hashCode => mode.hashCode;
}
