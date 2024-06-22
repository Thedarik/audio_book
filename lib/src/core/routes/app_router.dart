import "package:audio_book/src/feature/home/view/homa_page.dart";
import "package:audio_book/src/feature/home/view/library_page.dart";
import "package:audio_book/src/feature/home/view/setting_page.dart";
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

import "app_route_name.dart";

final class AppRouter {
  static GoRouter router = GoRouter(
    initialLocation: AppRouteName.libraryPage,
    routes: <RouteBase>[
      GoRoute(
        path: AppRouteName.homaPage,
        builder: (BuildContext context, GoRouterState state) => const HomaPage(),
      ),
      GoRoute(
        path: AppRouteName.libraryPage,
        builder: (BuildContext context, GoRouterState state) => const LibraryPage(),
      ),
      GoRoute(
        path: AppRouteName.settingPage,
        builder: (BuildContext context, GoRouterState state) => const SettingPage(),
      ),
    ],
  );
}
