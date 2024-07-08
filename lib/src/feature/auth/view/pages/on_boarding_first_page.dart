import 'package:audio_book/src/core/localization/tr_language.dart';
import 'package:audio_book/src/core/style/images.dart';
import 'package:audio_book/src/core/style/text_style.dart';
import 'package:audio_book/src/feature/auth/view/widgets/useful_widgets_for_all_pages.dart';
import 'package:flutter/material.dart';

class OnBoardingFirstPage extends StatelessWidget {
  const OnBoardingFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Column(
            children: [
              fixedSizedBox(height: 223),
              /// photo
              AppImages.onBoardingFirstImage,
              fixedSizedBox(height: 21),
              Text(
                "Tittle One".tr,
                style: AppTextStyle.onBoardingTitleLarge,
              ),
              fixedSizedBox(height: 12),
              Text(
                "Lorem ipsum dolor sit amet la maryame\ndor sut colondeum.".tr,
                style: AppTextStyle.onBoardingSubtitleMedium,
                textAlign: TextAlign.center,
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
