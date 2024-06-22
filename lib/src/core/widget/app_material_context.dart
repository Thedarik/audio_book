import "package:audio_book/src/core/localization/app_localization.dart";
import "package:audio_book/src/core/style/app_theme.dart";
import "package:audio_book/src/feature/settings/inherited/inherted_theme_notifier.dart";
import "package:flutter/material.dart";
import "package:flutter_localizations/flutter_localizations.dart";

import "../../feature/settings/inherited/inherited_local_notifier.dart";
import "../../feature/settings/inherited/local_controller.dart";
import "../../feature/settings/inherited/theme_controller.dart";
import "../../feature/settings/model/language_type.dart";
import "../routes/app_router.dart";

/// {@template app}
/// App widget.
/// {@endtemplate}
///

final ThemeController themeController = ThemeController();
final LocalController localController = LocalController();

@immutable
class AppMaterialContext extends StatelessWidget {
  AppMaterialContext({super.key}) : builderKey = GlobalKey();

  final GlobalKey builderKey;

  @override
  Widget build(BuildContext context) => InheritedThemeNotifier(
        themeController: themeController,
        child: InheritedLocalNotifier(
          localController: localController,
          child: Builder(
            builder: (BuildContext context) {
              return MaterialApp.router(
                onGenerateTitle: (BuildContext context) => "PDP Project",
                routerConfig: AppRouter.router,
                restorationScopeId: "material_app",
                debugShowCheckedModeBanner: false,
                locale: InheritedLocalNotifier.maybeOf(context)?.appLocal ??
                    const Locale("ru", "RU"),
                supportedLocales: const <Locale>[
                  Locale("uz", "UZ"),
                  Locale("ru", "RU")
                ],
                localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                localeResolutionCallback: (final Locale? deviceLocale,
                    final Iterable<Locale> supportedLocales) {
                  final LocalController local =
                      InheritedLocalNotifier.maybeOf(context, listen: false)!;

                  for (final locale in supportedLocales) {
                    if (locale.languageCode == local.appLocal.languageCode) {
                      return local.appLocal;
                    }
                  }
                  for (final Locale locale in supportedLocales) {
                    if (deviceLocale == locale) {
                      return deviceLocale;
                    }
                  }
                  local.changeLocal(LanguageType.ru);
                  return const Locale("ru", "RU");
                },
                theme: InheritedThemeNotifier.maybeOf(context)?.theme ?? AppTheme.light(),
                    // themeController.theme,
                builder: (BuildContext context, Widget? child) =>
                    MediaQuery.withNoTextScaling(
                  key: builderKey,
                  child: child ?? const SizedBox.shrink(),
                ),
              );
            },
          ),
        ),
      );
}
