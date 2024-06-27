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
    List<String> assets = [
      "assets/images/the_black_witch.png",
      "assets/images/the_prisoners_key.png",
      "assets/images/the_kidnappers.png",
      "assets/images/the_fire_queen.png",
    ];
    List<String> texts = [
      "The Black Witch",
      "Prisoners Key",
      "The Kidnappers",
      "TheFire Queen",
    ];

    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15.w,
        childAspectRatio: 0.73.sp,
      ),
      itemCount: assets.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: (){
            context.go("${AppRouteName.mainPage}${AppRouteName.homePage.substring(1)}/${AppRouteName.homeDetailPage}/${AppRouteName.bookPage}");
          },
          child: Column(
            children: [
              SizedBox(
                height: 160,
                width: 160,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              assets[index]
                          )
                      )
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
                        text: "${texts[index]}\n",
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
