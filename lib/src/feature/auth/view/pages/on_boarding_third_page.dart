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
                "Tittle Three",
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
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 40.0),
              //   child: ClipRRect(
              //     borderRadius: BorderRadius.circular(8),
              //     child: MaterialButton(
              //       minWidth: double.infinity,
              //       height: 56,
              //       color: AppColors.c4838D1,
              //       onPressed: () {
              //         context.go(AppRouteName.loginPage);
              //       },
              //       child: Text(
              //         "Lets Get Started",
              //         style: AppTextStyle.onBoardingButtonNextMedium,
              //       ),
              //     ),
              //   ),
              // ),
              // const SizedBox(
              //   height: 80,
              // )
            ],
          ),
        ),
      ),
    );
  }
}
