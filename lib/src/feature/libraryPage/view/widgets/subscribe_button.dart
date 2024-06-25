import 'package:audio_book/src/core/style/colors.dart';
import 'package:audio_book/src/core/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubscribeButton extends StatelessWidget {
  const SubscribeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        color: AppColors.c4838D1,
        onPressed: () {},
        child: SizedBox(
          height: 56.h,
          width: double.infinity,
          child: Center(
            child: Text(
              "SUBSCRIBE",
              style: AppTextStyle.subscriptionBottomTextsLarge?.copyWith(color: AppColors.cFFFFFF),
            ),
          ),
        ),
      ),
    );
  }
}
