import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/style/colors.dart';
import '../../../../core/style/images.dart';
import '../../../../core/style/text_style.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({super.key,});

  @override
  Widget build(BuildContext context) {
    List<String> texts = [
      "Business",
      "Personal...",
      "Music",
      "Photogra..."
    ];

    List<Widget> widgets = [
      AppImages.businessIcon,
      AppImages.personalIcon,
      AppImages.musicsIcon,
      AppImages.photographyIcon
    ];

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(
                height: 48.h,
                width: 160.w,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: AppColors.cF5F5FA,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      widgets[0],
                      SizedBox(width: 5.w),
                      Text(
                        texts[0],
                        style: AppTextStyle.searchCategoryMedium,
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 16.h,),

              SizedBox(
                height: 48.h,
                width: 160.w,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: AppColors.cF5F5FA,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      widgets[1],
                      SizedBox(width: 5.w),
                      Text(
                        texts[1],
                        style: AppTextStyle.searchCategoryMedium,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          Column(
            children: [
              SizedBox(
                height: 48.h,
                width: 160.w,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: AppColors.cF5F5FA,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      widgets[2],
                      SizedBox(width: 5.w),
                      Text(
                        texts[2],
                        style: AppTextStyle.searchCategoryMedium,
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 16.h,),

              SizedBox(
                height: 48.h,
                width: 160.w,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: AppColors.cF5F5FA,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      widgets[3],
                      SizedBox(width: 5.w),
                      Text(
                        texts[3],
                        style: AppTextStyle.searchCategoryMedium,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    )
    ;
  }
}
