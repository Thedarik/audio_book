import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/style/colors.dart';
import '../../../../core/style/text_style.dart';

class SummaryText extends StatelessWidget {
  final String text;
  const SummaryText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 35.w),
      child: Text(
        text,
          style: AppTextStyle.homeSeeMoreSmall?.copyWith(
              color: AppColors.c6A6A8B,
              fontWeight: FontWeight.w300
          )
      ),
    );
  }
}
