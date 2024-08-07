import 'package:audio_book/src/core/localization/tr_language.dart';
import 'package:flutter/material.dart';
import '../../../../core/style/images.dart';
import '../../../../core/style/text_style.dart';

class OnBoardingThirdPage extends StatelessWidget {
  const OnBoardingThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 223,
              ),

              /// photo
              AppImages.onBoardingThirdImage,
              const SizedBox(
                height: 21,
              ),
              Text(
                "Tittle Three".tr,
                style: AppTextStyle.onBoardingTitleLarge,
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                "Lorem ipsum dolor sit amet la maryame\ndor sut colondeum.",
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
