import 'package:audio_book/src/core/localization/tr_language.dart';
import 'package:audio_book/src/core/style/colors.dart';
import 'package:audio_book/src/feature/auth/view/pages/on_boarding_first_page.dart';
import 'package:audio_book/src/feature/auth/view/pages/on_boarding_second_page.dart';
import 'package:audio_book/src/feature/auth/view/pages/on_boarding_third_page.dart';
import 'package:audio_book/src/feature/auth/view/widgets/on_boarding_main_widgets.dart';
import 'package:audio_book/src/feature/auth/view/widgets/useful_widgets_for_all_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/routes/app_route_name.dart';
import '../../../../core/style/images.dart';
import '../../../../core/style/text_style.dart';

class OnBoardingMainPage extends StatelessWidget {
  OnBoardingMainPage({super.key});

  final PageController _controller = PageController();
  final ValueNotifier<int> _currentIndexNotifier = ValueNotifier<int>(0);

  final List<Widget> pages = const [
    OnBoardingFirstPage(),
    OnBoardingSecondPage(),
    OnBoardingThirdPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            onPageChanged: (index) {
              _currentIndexNotifier.value = index;
            },
            controller: _controller,
            children: pages,
          ),
          OnBoardingMainWidgets.onBoardingMainAligns(),
          OnBoardingMainWidgets.smoothIndicator(
            controller: _controller,
            pages: pages.length,
          ),
          OnBoardingMainWidgets.buttonPart(pages: pages.length,controller: _controller,currentIndexNotifier: _currentIndexNotifier),
        ],
      ),
    );
  }
}
