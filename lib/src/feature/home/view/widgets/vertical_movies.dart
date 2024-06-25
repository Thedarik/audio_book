import 'package:audio_book/src/core/style/colors.dart';
import 'package:audio_book/src/core/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routes/app_route_name.dart';

class VerticalMovies extends StatelessWidget {
  const VerticalMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15.w,
        childAspectRatio: 0.73,
      ),
      itemCount: 7,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: (){
            context.go("${AppRouteName.mainPage}${AppRouteName.homePage.substring(1)}/${AppRouteName.homeDetailPage}/${AppRouteName.bookPage}");
          },
          child: Column(
            children: [
              const SizedBox(
                height: 160,
                width: 160,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: Colors.blue
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "The Black Witch\n",
                        style: AppTextStyle.homeCategoriesMedium?.copyWith(
                          fontWeight: FontWeight.w500
                        )
                      ),
                      TextSpan(
                        text: "Laurie Forest",
                        style: AppTextStyle.homeSubtitleSmall?.copyWith(
                          color: AppColors.c4838D1
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
