import "package:audio_book/src/feature/auth/view/pages/loading_page.dart";
import "package:audio_book/src/feature/auth/view/pages/personalization_page.dart";
import "package:audio_book/src/feature/auth/view/pages/personalization_page_two.dart";
import "package:audio_book/src/feature/auth/view/pages/welcome_page.dart";
import "package:audio_book/src/feature/home/view/pages/home_detail_page.dart";
import "package:audio_book/src/feature/home/view/pages/main_page.dart";
import "package:audio_book/src/feature/libraryPage/view/pages/subscriptions_page.dart";
import "package:audio_book/src/feature/search/view/pages/search_page.dart";
import "package:audio_book/src/feature/libraryPage/view/pages/audio_page.dart";
import "package:audio_book/src/feature/libraryPage/view/pages/library_page.dart";
import "package:audio_book/src/feature/libraryPage/view/pages/profile_page.dart";
import "package:audio_book/src/feature/libraryPage/view/pages/setting_page.dart";
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "../../feature/auth/view/pages/confirmation_code_page.dart";
import "../../feature/auth/view/pages/error_page.dart";
import "../../feature/auth/view/pages/forget_password_page_one.dart";
import "../../feature/auth/view/pages/forget_password_page_two.dart";
import "../../feature/auth/view/pages/login_page.dart";
import "../../feature/auth/view/pages/on_boarding_first_page.dart";
import "../../feature/auth/view/pages/on_boarding_main_page.dart";
import "../../feature/auth/view/pages/on_boarding_second_page.dart";
import "../../feature/auth/view/pages/on_boarding_third_page.dart";
import "../../feature/auth/view/pages/register_page.dart";
import "../../feature/home/view/pages/book_detail_page.dart";
import "../../feature/home/view/pages/home_page.dart";
import "../../feature/splash/presentation/pages/splash_page.dart";
import "app_route_name.dart";

final class AppRouter {
  static GoRouter router = GoRouter(
    initialLocation: AppRouteName.subscriptionsPage,
    routes: <RouteBase>[
      GoRoute(
        path: AppRouteName.searchPage,
        builder: (context, state) => const SearchPage(),
      ),
      GoRoute(
        path: AppRouteName.bookPage,
        builder: (context, state) => const BookDetailPage(),
      ),
      GoRoute(
        path: AppRouteName.splash,
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: AppRouteName.loginPage,
        builder: (context, state) => LoginPage(),
      ),
      GoRoute(
        path: AppRouteName.registerPage,
        builder: (context, state) => RegisterPage(),
      ),
      GoRoute(
        path: AppRouteName.confirmationPage,
        builder: (context, state) => ConfirmationCodePage(),
      ),
      GoRoute(
        path: AppRouteName.forgetPasswordOne,
        builder: (context, state) => ForgetPasswordPageOne(),
      ),
      GoRoute(
        path: AppRouteName.forgetPasswordTwo,
        builder: (context, state) => ForgetPasswordPageTwo(),
      ),
      GoRoute(
        path: AppRouteName.onBoardingOne,
        builder: (context, state) => const OnBoardingFirstPage(),
      ),
      GoRoute(
        path: AppRouteName.onBoardingTwo,
        builder: (context, state) => const OnBoardingSecondPage(),
      ),
      GoRoute(
        path: AppRouteName.onBoardingThree,
        builder: (context, state) => const OnBoardingThirdPage(),
      ),
      GoRoute(
        path: AppRouteName.onBoardingMain,
        builder: (context, state) => OnBoardingMainPage(),
      ),
      GoRoute(
        path: AppRouteName.errorPage,
        builder: (context, state) => const ErrorPage(),
      ),
      GoRoute(
        path: AppRouteName.welcomePage,
        builder: (context, state) => const WelcomePage(),
      ),
      GoRoute(
        path: AppRouteName.personalizationPage,
        builder: (context, state) => PersonalizationPage(),
      ),
      GoRoute(
        path: AppRouteName.personalizationPageTwo,
        builder: (context, state) => const PersonalizationPageTwo(),
      ),
      GoRoute(
        path: AppRouteName.loadingPage,
        builder: (context, state) => const LoadingPage(),
      ),
      GoRoute(
        path: AppRouteName.homePage,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: AppRouteName.libraryPage,
        builder: (BuildContext context, GoRouterState state) => const LibraryPage(),
      ),
      GoRoute(
        path: AppRouteName.homeDetailPage,
        builder: (context, state) => const HomeDetailPage(),
      ),
      GoRoute(
        path: AppRouteName.mainPage,
        builder: (context, state) => const MainPage(),
      ),
      GoRoute(
        path: AppRouteName.settingPage,
        builder: (BuildContext context, GoRouterState state) => const SettingPage(),
      ),
      GoRoute(
        path: AppRouteName.profilePage,
        builder: (BuildContext context, GoRouterState state) => const ProfilePage(),
      ),
      GoRoute(
        path: AppRouteName.audioPage,
        builder: (BuildContext context, GoRouterState state) => const AudioPage(),
      ),
      GoRoute(
        path: AppRouteName.subscriptionsPage,
        builder: (BuildContext context, GoRouterState state) => const SubscriptionsPage(),
      ),
    ],
  );
}
