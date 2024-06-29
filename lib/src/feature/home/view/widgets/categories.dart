import 'package:audio_book/src/core/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/style/text_style.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 38.w),
      child: Row(
        children: [
          SizedBox(
            height: 32.h,
            width: 74.w,
            child: DecoratedBox(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(
                      color: AppColors.c6A6A8B,
                      width: 1
                  )
              ),
              child: Center(
                child: Text(
                  "Fantasy",
                  style: AppTextStyle.homeSubtitleSmall?.copyWith(
                      fontWeight: FontWeight.w700
                  ),
                ),
              ),
            ),
          ),

          SizedBox(width: 10.w),

          SizedBox(
            height: 32.h,
            width: 74.w,
            child: DecoratedBox(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(
                      color: AppColors.c6A6A8B,
                      width: 1
                  )
              ),
              child: Center(
                child: Text(
                  "Drama",
                  style: AppTextStyle.homeSubtitleSmall?.copyWith(
                      fontWeight: FontWeight.w700
                  ),
                ),
              ),
            ),
          ),

          SizedBox(width: 10.w),

          SizedBox(
            height: 32.h,
            width: 74.w,
            child: DecoratedBox(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(
                      color: AppColors.c6A6A8B,
                      width: 1
                  )
              ),
              child: Center(
                child: Text(
                  "Fiction",
                  style: AppTextStyle.homeSubtitleSmall?.copyWith(
                      fontWeight: FontWeight.w700
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
