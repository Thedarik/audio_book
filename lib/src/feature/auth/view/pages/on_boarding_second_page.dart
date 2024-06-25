import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routes/app_route_name.dart';
import '../../../../core/style/colors.dart';
import '../../../../core/style/images.dart';
import '../../../../core/style/text_style.dart';

class OnBoardingSecondPage extends StatelessWidget {
  const OnBoardingSecondPage({super.key});

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
              AppImages.onBoardingSecondImage,
              const SizedBox(
                height: 21,
              ),
              Text(
                "Tittle Two",
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
