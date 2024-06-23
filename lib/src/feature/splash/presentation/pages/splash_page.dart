import 'package:audio_book/src/core/style/images.dart';
import 'package:audio_book/src/core/style/text_style.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  void splashTimer()async{
    await Future.delayed(const Duration(seconds: 3));
    /// pushing to another page
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            AppImages.mainLogoIcon,
            const SizedBox(height: 280,),
            Text("Version 1.0",style: AppTextStyle.splashVersionLabelLarge,),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}