import 'package:audio_book/src/core/style/images.dart';
import 'package:audio_book/src/core/style/text_style.dart';
import 'package:flutter/material.dart';

class OnBoardingFirstPage extends StatelessWidget {
  const OnBoardingFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Row(
              children: [],
            ),
            AppImages.firstBoardingImage,
            Text(
              "Tittle One",
              style: AppTextStyle.onBoardingTitleLarge,
            ),
            Text(
              "Lorem ipsum dolor sit amet la maryame\ndor sut colondeum.",
              style: AppTextStyle.onBoardingSubtitleMedium,
              textAlign: TextAlign.center,
            ),
            
          ],
        ),
      ),
    );
  }
}
