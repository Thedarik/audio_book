import 'package:audio_book/src/feature/home/view/homa_page.dart';
import 'package:flutter/material.dart';

import '../style/colors.dart';
import 'app_route_name.dart';

final class AppRouter<T extends Object?> {
  Route<T> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRouteName.homaPage:
        return MaterialPageRoute<T>(builder: (context) => const HomaPage());
      default:
        return _errorRoute();
    }
  }

  Route<T> _errorRoute() => MaterialPageRoute<T>(
        builder: (context) => Scaffold(
          body: Center(
            child: Text(
              'Error Route',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: AppColors.black,
                  ),
            ),
          ),
        ),
      );
}
