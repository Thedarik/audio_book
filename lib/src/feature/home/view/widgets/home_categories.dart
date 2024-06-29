import 'package:audio_book/src/core/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/routes/app_route_name.dart';
import '../../../../core/style/text_style.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> categories = [
      {'name': 'Art', 'width': 55.0, 'height': 40.0},
      {'name': 'Business', 'width': 102.0, 'height': 40.0},
      {'name': 'Comedy', 'width': 101.0, 'height': 40.0},
      {'name': 'Drama', 'width': 88.0, 'height': 40.0},
    ];

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Categories",
              style: AppTextStyle.homeCategoryTextMedium,
            ),
            SizedBox(width: 75.w),
            GestureDetector(
              onTap: (){
                context.go("${AppRouteName.mainPage}${AppRouteName.homePage.substring(1)}/${AppRouteName.homeDetailPage}");
              },
              child: Text(
                "See more",
                style: AppTextStyle.homeSeeMoreSmall,
              ),
            ),
          ],
        ),

        SizedBox(height: 16.h),

        SizedBox(
          height: 40,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: ListView.separated(
              separatorBuilder: (context, index)=> SizedBox(width: 12.w,),
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final category = categories[index];
                return SizedBox(
                  height: category['height'],
                  width: category['width'],
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: AppColors.cF5F5FA,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        category['name'],
                        style: AppTextStyle.homeCategoriesMedium,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
