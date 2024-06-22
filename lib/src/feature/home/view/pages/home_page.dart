import 'package:audio_book/src/core/style/colors.dart';
import 'package:audio_book/src/core/style/images.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(
              height: 40,
              width: 40,
              child: AppImages.mainLogoIcon,
            ),
            const SizedBox(
              width: 5,
            ),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'Audi',
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: AppColors.c4838D1,
                    ),
                  ),
                  TextSpan(
                    text: 'Books',
                    style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: AppColors.c4838D1),
                  ),
                  TextSpan(
                    text: '.',
                    style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: AppColors.cF77A55),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          GestureDetector(
            child: AppImages.settingIcon,
          )
        ],
      ),
    );
  }
}
