import 'package:audio_book/src/core/style/colors.dart';
import 'package:audio_book/src/core/style/images.dart';
import 'package:audio_book/src/core/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routes/app_route_name.dart';

class OnBoardingFirstPage extends StatelessWidget {
  const OnBoardingFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 223,),
              /// photo
              AppImages.onBoardingFirstImage,
              const SizedBox(
                height: 21,
              ),
              Text(
                "Tittle One",
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
