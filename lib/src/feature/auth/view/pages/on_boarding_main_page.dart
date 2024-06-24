import 'package:audio_book/src/core/style/colors.dart';
import 'package:audio_book/src/feature/auth/view/pages/on_boarding_first_page.dart';
import 'package:audio_book/src/feature/auth/view/pages/on_boarding_second_page.dart';
import 'package:audio_book/src/feature/auth/view/pages/on_boarding_third_page.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/style/images.dart';

class OnBoardingMainPage extends StatelessWidget {
  OnBoardingMainPage({super.key});

  final PageController _controller = PageController();
  final ValueNotifier<int> _currentIndexNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.bottomCenter, children: [
        PageView(
          onPageChanged: (index) {
            _currentIndexNotifier.value = index;
          },
          controller: _controller,
          /// page view
          children: const[
            OnBoardingFirstPage(),
            OnBoardingSecondPage(),
            OnBoardingThirdPage(),
          ],

          /// smooth indicator
        ),
        Align(
          alignment: Alignment.topLeft,
          child: AppImages.blueStrokeImage,
        ),
        Align(
          alignment: const Alignment(1, -0.7),
          child: AppImages.circleImage,
        ),
        Align(
          alignment: const Alignment(0, 0.55),
          child: SmoothPageIndicator(
            effect: ExpandingDotsEffect(
              activeDotColor: AppColors.cF77A55,
                expansionFactor: 1.1,
                dotWidth: 15,
                dotHeight: 15,
                dotColor: Color(0xffc7466E3)
            ),
            controller: _controller,
            count: 3,
          ),
        ),
      ]),
    );
  }
}
