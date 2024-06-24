import "package:audio_book/src/feature/home/view/pages/book_detail_page.dart";
import "package:audio_book/src/feature/home/view/pages/audio_page.dart";
import "package:audio_book/src/feature/home/view/pages/library_page.dart";
import "package:audio_book/src/feature/home/view/pages/home_detail_page.dart";
import "package:audio_book/src/feature/home/view/pages/main_page.dart";
import "package:audio_book/src/feature/search/view/pages/search_page.dart";
import "package:audio_book/src/feature/home/view/pages/profile_page.dart";
import "package:audio_book/src/feature/home/view/pages/setting_page.dart";
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

import "../../feature/home/view/pages/home_page.dart";
import "app_route_name.dart";

final class AppRouter {
  static GoRouter router = GoRouter(
    initialLocation: AppRouteName.searchPage,
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
    ],
  );
}
