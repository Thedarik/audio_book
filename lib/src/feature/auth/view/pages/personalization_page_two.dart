import 'package:audio_book/src/feature/auth/view/widgets/useful_widgets_for_all_pages.dart';
import 'package:flutter/material.dart';

import '../../../../core/style/colors.dart';
import '../../../../core/style/images.dart';
import '../../../../core/style/text_style.dart';

class PersonalizationPageTwo extends StatelessWidget {
  const PersonalizationPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: AppImages.blueStrokeImage,
          ),
          Align(
            alignment: const Alignment(1, -0.7),
            child: AppImages.circleImage,
          ),
          Align(
              alignment: const Alignment(0, -0.1),
              child: Column(
                children: [
                  fixedSizedBox(height: 222),
                  Center(
                    child: AppImages.finishingPageImage,
                  ),
                  Text(
                    "You are ready to go!",
                    style: AppTextStyle.personalizationTitleMedium,
                  ),
                  fixedSizedBox(height: 12),
                  Text(
                    "Congratulation, any interesting topics\nwill be shortly in your hands.",
                    textAlign: TextAlign.center,
                    style: AppTextStyle.personalizationSubtitleSmall,
                  ),
                  fixedSizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 56,
                      onPressed: () {},
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none),
                      color: AppColors.c4838D1,
                      child: Text(
                        "Finish",
                        style: AppTextStyle.loginLoginButtonMedium,
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
          ),
        ],
      ),
    );
  }
}
