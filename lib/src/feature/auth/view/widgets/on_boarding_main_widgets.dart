import 'package:audio_book/src/core/localization/tr_language.dart';
import 'package:audio_book/src/feature/auth/view/widgets/useful_widgets_for_all_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/routes/app_route_name.dart';
import '../../../../core/style/colors.dart';
import '../../../../core/style/images.dart';
import '../../../../core/style/text_style.dart';

@immutable
class OnBoardingMainWidgets {
  static Widget onBoardingMainAligns() {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: AppImages.blueStrokeImage,
        ),
        Align(
          alignment: const Alignment(1, -0.7),
          child: AppImages.circleImage,
        ),
      ],
    );
  }

  static Widget smoothIndicator({
    required PageController controller,
    required int pages,
  }) {
    return Column(
      children: [
        fixedSizedBox(height: 624.h),
        SmoothPageIndicator(
          effect: const ExpandingDotsEffect(
              activeDotColor: AppColors.cF77A55,
              expansionFactor: 1.1,
              dotWidth: 15,
              dotHeight: 15,
              spacing: 12,
              dotColor: Color(0xffc7466e3)),
          controller: controller,
          count: pages,
        ),
      ],
    );
  }

  static Widget buttonPart(
      {required PageController controller,
      required ValueListenable<int> currentIndexNotifier,
      required int pages}) {
    return Column(
      children: [
        fixedSizedBox(height: 676.h),
        ValueListenableBuilder<int>(
          valueListenable: currentIndexNotifier,
          builder: (context, currentIndex, child) {
            if (currentIndex < pages - 1) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    minWidth: 140,
                    height: 56,
                    onPressed: () {
                      context.go(
                          "${AppRouteName.mainPage}${AppRouteName.homePage.substring(1)}");
                    },
                    child: Text(
                      "Skip",
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
                        if (controller.page! < pages - 1) {
                          controller.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                      child: Text(
                        "Next",
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
                    "Lets Get Started",
                    style: AppTextStyle.onBoardingButtonNextMedium,
                  ),
                ),
              );
            }
          },
        ),
      ],
    );
  }
}
