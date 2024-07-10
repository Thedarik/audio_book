import 'package:flutter/foundation.dart';

@immutable
final class AppRouteName {
  const AppRouteName._();

  static const String homePage = '/home';
  static const String libraryPage = '/library';
  static const String homeDetailPage = 'homeDetail';
  static const String mainPage = '/';
  static const String settingPage = "setting";
  static const String searchPage = "/search";
  static const String bookPage = "book";
  static const String bookSearchPage = "bookSearch";
  static const String profilePage = "profile";
  static const String audioPage = "audio";
  static const String pdfPage = "pdf";
  static const String testPage = "/test";

  /// splash
  static const String splash = '/splash';
  static const String rating = '/rating';

  /// AUTH PAGES
  /// login page
  static const String loginPage = '/loginPage';

  /// register pages
  static const String registerPage = 'registerPage';

  /// confirmation code page
  static const String confirmationPage = 'confirmationPage';

  /// forget password pages
  static const String forgetPasswordOne = 'forgetPasswordOne';
  static const String forgetPasswordTwo = 'forgetPasswordTwo';

  /// on boardings
  static const String onBoardingOne = 'onBoardingOne';
  static const String onBoardingTwo = 'onBoardingTwo';
  static const String onBoardingThree = 'onBoardingThree';
  static const String onBoardingMain = '/onBoardingMain';

  /// error page
  static const String errorPage = '/errorPage';

  /// welcome page
  static const String welcomePage = '/welcomePage';

  /// personalization
  static const String personalizationPage = 'personalizationPage';
  static const String personalizationPageTwo = 'personalizationPageTwo';

  /// loading pa
  static const String loadingPage = '/loadingPage';
  static const String subscriptionsPage = "/subscriptions";
}
