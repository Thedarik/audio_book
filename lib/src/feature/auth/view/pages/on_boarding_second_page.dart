import 'package:flutter/material.dart';

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
              AppImages.secondBoardingImage,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    minWidth: 140,
                    height: 56,
                    onPressed: () {},
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
                        onPressed: () {},
                        child: Text(
                          "Next",
                          style: AppTextStyle.onBoardingButtonNextMedium,
                        ),
                      )),
                ],
              ),
              const SizedBox(
                height: 80,
              )
            ],
          ),
        ),
      ),
    );
  }
}
