

import "package:audio_book/src/core/localization/test_page.dart";
import "package:audio_book/src/feature/auth/view/pages/error_page.dart";
import "package:audio_book/src/feature/auth/view/pages/forget_password_page_one.dart";
import "package:audio_book/src/feature/auth/view/pages/forget_password_page_two.dart";
import "package:audio_book/src/feature/auth/view/pages/on_boarding_second_page.dart";
import "package:audio_book/src/feature/auth/view/pages/on_boarding_third_page.dart";
import "package:audio_book/src/feature/auth/view/pages/personalization_page.dart";
import "package:audio_book/src/feature/auth/view/pages/personalization_page_two.dart";
import "package:audio_book/src/feature/auth/view/pages/welcome_page.dart";
import "package:audio_book/src/feature/home/view/pages/book_detail_page.dart";
import "package:audio_book/src/feature/home/view/pages/home_detail_page.dart";
import "package:audio_book/src/feature/home/view/pages/home_page.dart";
import "package:audio_book/src/feature/home/view/pages/main_page.dart";
import "package:audio_book/src/feature/home/view/widgets/play_buttons.dart";
import "package:audio_book/src/feature/libraryPage/view/pages/audio_page.dart";
import "package:audio_book/src/feature/libraryPage/view/pages/library_book_page.dart";
import "package:audio_book/src/feature/libraryPage/view/pages/library_page.dart";
import "package:audio_book/src/feature/libraryPage/view/pages/profile_page.dart";
import "package:audio_book/src/feature/libraryPage/view/pages/setting_page.dart";
import "package:audio_book/src/feature/search/view/pages/search_page.dart";
import "package:audio_book/src/feature/splash/presentation/pages/splash_page.dart";
import "package:go_router/go_router.dart";
import "../../../setup.dart";
import "../../feature/auth/view/pages/confirmation_code_page.dart";
import "../../feature/auth/view/pages/login_page.dart";
import "../../feature/auth/view/pages/on_boarding_main_page.dart";
import "../../feature/auth/view/pages/register_page.dart";
import "../../feature/home/view/pages/book_search_page.dart";
import "app_route_name.dart";

final class AppRouter {
  static GoRouter router = token == null
      ? GoRouter(
          initialLocation: AppRouteName.splash,
          routes: <RouteBase>[
            GoRoute(
              path: AppRouteName.splash,
              builder: (context, state) => const SplashPage(),
            ),
            GoRoute(
              path: AppRouteName.testPage,
              builder: (context, state) => const TestPage(),
            ),

            //OnBoardings
            GoRoute(
              path: AppRouteName.onBoardingMain,
              builder: (context, state) => OnBoardingMainPage(),
              routes: [
                GoRoute(
                  path: AppRouteName.onBoardingTwo,
                  builder: (context, state) => const OnBoardingSecondPage(),
                  routes: [
                    GoRoute(
                      path: AppRouteName.onBoardingThree,
                      builder: (context, state) => const OnBoardingThirdPage(),
                    ),
                  ],
                ),
              ],
            ),
            GoRoute(
              path: AppRouteName.errorPage,
              builder: (context, state) => const ErrorPage(),
            ),

            //Login
            GoRoute(
              path: AppRouteName.loginPage,
              builder: (context, state) => LoginPage(),
              routes: [
                GoRoute(
                  path: AppRouteName.registerPage,
                  builder: (context, state) => RegisterPage(),
                  routes: [
                    GoRoute(
                      path: AppRouteName.confirmationPage,
                      builder: (context, state) {
                        String info = state.extra as String;
                        return ConfirmationCodePage(
                          token: info,
                        );
                      },
                    ),
                  ],
                ),
                GoRoute(
                  path: AppRouteName.forgetPasswordOne,
                  builder: (context, state) => ForgetPasswordPageOne(),
                  routes: [
                    GoRoute(
                      path: AppRouteName.forgetPasswordTwo,
                      builder: (context, state) => ForgetPasswordPageTwo(),
                    ),
                  ],
                ),
              ],
            ),

            //Welcome
            GoRoute(
              path: AppRouteName.welcomePage,
              builder: (context, state) => const WelcomePage(),
              routes: [
                GoRoute(
                  path: AppRouteName.personalizationPage,
                  builder: (context, state) => PersonalizationPage(),
                  routes: [
                    GoRoute(
                      path: AppRouteName.personalizationPageTwo,
                      builder: (context, state) => const PersonalizationPageTwo(),
                    ),
                  ],
                ),
              ],
            ),

            //Home
            ShellRoute(
              builder: (context, state, child) => MainPage(
                child: child,
              ),
              routes: [
                //Home
                GoRoute(
                  path: AppRouteName.homePage,
                  name: 'homePage',
                  builder: (context, state) => HomePage(),
                  routes: [
                    GoRoute(
                      path: AppRouteName.homeDetailPage,
                      name: 'homeDetailPage',
                      builder: (context, state) => const HomeDetailPage(),
                      routes: [
                        GoRoute(
                          path: AppRouteName.bookPage,
                          name: 'bookPage',
                          builder: (context, state) => BookDetailPage(),
                          routes: [
                            GoRoute(
                              path: AppRouteName.audioPage,
                              name: 'audioPage',
                              builder: (context, state) => const AudioPage(),
                            ),
                            GoRoute(
                              path: AppRouteName.pdfPage,
                              name: 'pdfPage',
                              builder: (context, state) => const PdfViewerPage(),
                            ),
                          ],
                        ),
                      ],
                    ),
                    GoRoute(
                      path: AppRouteName.settingPage,
                      name: 'settingPage',
                      builder: (context, state) => const SettingPage(),
                      routes: [
                        GoRoute(
                          path: AppRouteName.profilePage,
                          name: 'profilePage',
                          builder: (context, state) => const ProfilePage(),
                        ),
                      ],
                    ),
                  ],
                ),

                // Search
                GoRoute(
                  path: AppRouteName.searchPage,
                  name: 'searchPage',
                  builder: (context, state) => SearchPage(),
                  routes: [
                    GoRoute(
                      path: AppRouteName.bookSearchPage,
                      name: 'bookSearchPage',
                      builder: (context, state) => BookDetailPageSearch(),
                      routes: [
                        GoRoute(
                          path: AppRouteName.audioPage,
                          name: 'audioSearchPage',
                          builder: (context, state) => const AudioPage(),
                        ),
                        GoRoute(
                          path: AppRouteName.pdfPage,
                          name: 'pdfSearchPage',
                          builder: (context, state) => const PdfViewerPage(),
                        ),
                      ],
                    ),
                  ],
                ),


                //Library
                GoRoute(
                  path: AppRouteName.libraryPage,
                  builder: (context, state) => LibraryPage(),
                  routes: [
                    GoRoute(
                      path: AppRouteName.libraryBookPage,
                      builder: (context, state) => LibraryBookPage(),
                      routes: [
                        GoRoute(
                          path: AppRouteName.audioPage,
                          builder: (context, state) => const AudioPage(),
                        ),
                        GoRoute(
                          path: AppRouteName.libraryPdfPage,
                          builder: (context, state) => const LibraryPdfViewerPage(),
                        ),
                      ],
                    ),

                    GoRoute(
                      path: AppRouteName.profilePage,
                      builder: (context, state) => const ProfilePage(),
                    ),
                  ],
                )
              ],
            )
          ],
        )
      : GoRouter(
          initialLocation: AppRouteName.splash,
          routes: <RouteBase>[
            GoRoute(
              path: AppRouteName.splash,
              builder: (context, state) => const SplashPage(),
            ),

            //Home
            ShellRoute(
              builder: (context, state, child) => MainPage(
                child: child,
              ),
              routes: [
                GoRoute(
                  path: AppRouteName.settingPage,
                  builder: (context, state) => const SettingPage(),
                ),

                //Home
                GoRoute(
                  path: AppRouteName.homePage,
                  builder: (context, state) => HomePage(),
                  routes: [
                    GoRoute(
                      path: AppRouteName.homeDetailPage,
                      builder: (context, state) => const HomeDetailPage(),
                      routes: [
                        GoRoute(
                          path: AppRouteName.bookPage,
                          builder: (context, state) => BookDetailPage(),
                          routes: [
                            GoRoute(
                              path: AppRouteName.audioPage,
                              builder: (context, state) => const AudioPage(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),

                //Search
                GoRoute(
                  path: AppRouteName.searchPage,
                  builder: (context, state) => SearchPage(),
                ),

                //Library
                GoRoute(
                  path: AppRouteName.libraryPage,
                  builder: (context, state) => LibraryPage(),
                  routes: [
                    GoRoute(path: AppRouteName.profilePage, builder: (context, state) => const ProfilePage()),
                  ],
                ),
              ],
            ),
          ],
        );
}
