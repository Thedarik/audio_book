import "package:audio_book/src/feature/home/view/pages/home_page.dart";
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

import "app_route_name.dart";

final class AppRouter {
  static GoRouter router = GoRouter(
    initialLocation: AppRouteName.homePage,
    routes: <RouteBase>[
      GoRoute(
        path: AppRouteName.homePage,
        builder: (BuildContext context, GoRouterState state) =>
            const HomePage(),
      ),
    ],
  );
}
