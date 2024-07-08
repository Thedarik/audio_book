import 'package:audio_book/src/core/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/style/text_style.dart';

class Categories extends StatelessWidget {
  final String category1;
  final String category2;
  const Categories({super.key, required this.category1, required this.category2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 38.w),
      child: Row(
        children: [
          IntrinsicWidth(
            child: Container(
              height: 32.h,
              padding: EdgeInsets.symmetric(horizontal: 16.w), // Adding horizontal padding for better appearance
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                border: Border.all(
                  color: AppColors.c6A6A8B,
                  width: 1,
                ),
              ),
              child: Center(
                child: Text(
                  category1,
                  style: AppTextStyle.homeSubtitleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),

          SizedBox(width: 10.w),

          IntrinsicWidth(
            child: Container(
              height: 32.h,
              padding: EdgeInsets.symmetric(horizontal: 16.w), // Adding horizontal padding for better appearance
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                border: Border.all(
                  color: AppColors.c6A6A8B,
                  width: 1,
                ),
              ),
              child: Center(
                child: Text(
                  category2,
                  style: AppTextStyle.homeSubtitleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
