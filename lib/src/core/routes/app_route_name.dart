import 'package:flutter/foundation.dart';

@immutable
final class AppRouteName {
  const AppRouteName._();

  static const String homePage = '/home';
  static const String libraryPage = '/library';
  static const String homeDetailPage = '/homeDetail';
  static const String mainPage = '/';
  static const String settingPage = "/setting";
  static const String profilePage = "/profile";
  static const String audioPage = "/audio";
  /// splash
  static const String splash = '/splash';

  /// auth pages
  static const String onBoardingOne = '/onBoardingOne';
  static const String onBoardingTwo = '/onBoardingTwo';
  static const String onBoardingThree = '/onBoardingThree';
}
