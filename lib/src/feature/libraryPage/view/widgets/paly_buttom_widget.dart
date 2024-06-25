import 'package:audio_book/src/core/style/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PalyButtomWidget extends StatelessWidget {
  const PalyButtomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      child: SizedBox(
        height: 72.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: () {}, icon: AppImages.volumeUpIcon),
            IconButton(
              onPressed: () {},
              icon: AppImages.leftCircleIcon,
            ),
            IconButton(
              onPressed: () {},
              icon: AppImages.playIcon,
            ),
            IconButton(
              onPressed: () {},
              icon: AppImages.rightCircleIcon,
            ),
            IconButton(
              onPressed: () {},
              icon: AppImages.uploadIcon,
            ),
          ],
        ),
      ),
    );
  }
}
