import 'package:audio_book/src/core/routes/app_route_name.dart';
import 'package:audio_book/src/core/style/text_style.dart';
import 'package:audio_book/src/feature/auth/view/widgets/useful_widgets_for_all_pages.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/style/colors.dart';
import '../../../../core/style/images.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            alignment: const Alignment(0,-0.1),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                children: [
                  fixedSizedBox(height: 204),
                  Row(
                    children: [
                      Text("Welcome !",style: AppTextStyle.welcomeTextMedium,),
                      const Spacer(),
                    ],
                  ),
                  fixedSizedBox(height: 8),
                  Text("Find what you are looking for",style: AppTextStyle.welcomeBigTextLarge,),
                  fixedSizedBox(height: 16),
                  Text("By personalize your account, we can help you to find what you like.",style: AppTextStyle.welcomeSubtitleSmall,),
                  fixedSizedBox(height: 32),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 56,
                    onPressed: () {
                      context.go("${AppRouteName.welcomePage}/${AppRouteName.personalizationPage}");
                    },
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    color: AppColors.c4838D1,
                    child: Text(
                      "Personalize Your Account",
                      style: AppTextStyle.loginLoginButtonMedium,
                    ),
                  ),
                  fixedSizedBox(height: 16),
                  MaterialButton(
                    onPressed: () {
                      context.go("${AppRouteName.mainPage}${AppRouteName.homePage.substring(1)}");
                    },
                    minWidth: double.infinity,
                    height: 56,
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            width: 1, color: AppColors.c4838D1)),
                    child: Text(
                      "Skip",
                      style: AppTextStyle.registerCancelButtonMedium,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
