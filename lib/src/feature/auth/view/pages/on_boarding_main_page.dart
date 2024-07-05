import 'package:audio_book/src/core/localization/tr_language.dart';
import 'package:audio_book/src/core/style/colors.dart';
import 'package:audio_book/src/feature/auth/view/pages/on_boarding_first_page.dart';
import 'package:audio_book/src/feature/auth/view/pages/on_boarding_second_page.dart';
import 'package:audio_book/src/feature/auth/view/pages/on_boarding_third_page.dart';
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
          Align(
            alignment: Alignment.topLeft,
            child: AppImages.blueStrokeImage,
          ),
          Align(
            alignment: const Alignment(1, -0.7),
            child: AppImages.circleImage,
          ),
          Column(
            children: [
              fixedSizedBox(height: 624.h),
              SmoothPageIndicator(
                effect: const ExpandingDotsEffect(
                    activeDotColor: AppColors.cF77A55, expansionFactor: 1.1, dotWidth: 15, dotHeight: 15, spacing: 12, dotColor: Color(0xffc7466e3)),
                controller: _controller,
                count: pages.length,
              ),
            ],
          ),
          Column(
            children: [
              fixedSizedBox(height: 676.h),
              ValueListenableBuilder<int>(
                valueListenable: _currentIndexNotifier,
                builder: (context, currentIndex, child) {
                  if (currentIndex < pages.length - 1) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MaterialButton(
                          minWidth: 140,
                          height: 56,
                          onPressed: () {
                            context.go("${AppRouteName.mainPage}${AppRouteName.homePage.substring(1)}");
                          },
                          child: Text(
                            "Skip".tr,
                            style: AppTextStyle.onBoardingButtonSkipMedium,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: MaterialButton(
                            minWidth: 140,
                            height: 56,
                            color: AppColors.c4838D1,
                            onPressed: () {
                              if (_controller.page! < pages.length - 1) {
                                _controller.nextPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeInOut,
                                );
                              }
                            },
                            child: Text(
                              "Next".tr,
                              style: AppTextStyle.onBoardingButtonNextMedium,
                            ),
                          ),
                        ),
                      ],
                    );
                  } else {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height: 56,
                        color: AppColors.c4838D1,
                        elevation: 0,
                        shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        onPressed: () {
                          context.go(AppRouteName.errorPage);
                        },
                        child: Text(
                          "Lets Get Started".tr,
                          style: AppTextStyle.onBoardingButtonNextMedium,
                        ),
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
