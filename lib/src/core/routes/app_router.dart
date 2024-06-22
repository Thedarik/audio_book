import "package:audio_book/src/feature/home/view/homa_page.dart";
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

import "app_route_name.dart";

final class AppRouter {
  static GoRouter router = GoRouter(
    initialLocation: AppRouteName.homaPage,
    routes: <RouteBase>[
      GoRoute(
        path: AppRouteName.homaPage,
        builder: (BuildContext context, GoRouterState state) =>
            const HomaPage(),
      ),
    ],
  );
}
