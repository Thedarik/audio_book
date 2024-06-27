import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routes/app_route_name.dart';
import '../../../../core/style/colors.dart';
import '../../../../core/style/text_style.dart';

class MovieBanner extends StatelessWidget {
  final String categoryText;
  const MovieBanner({super.key, required this.categoryText});

  @override
  Widget build(BuildContext context) {
    List<String> assets = [
      "assets/images/the_black_witch.png",
      "assets/images/the_prisoners_key.png",
      "assets/images/the_kidnappers.png",
      "assets/images/the_fire_queen.png",
      "assets/images/light_mage.png"
    ];
    List<String> texts = [
      "The Black Witch",
      "The Prisoners Key",
      "The Kidnappers",
      "The Fire Queen",
      "Light Mage"
    ];

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                categoryText,
                style: AppTextStyle.homeCategoryTextMedium,
              ),

              const SizedBox(width: 100),

              TextButton(
                onPressed: (){
                  context.go("${AppRouteName.mainPage}${AppRouteName.homePage.substring(1)}/${AppRouteName.homeDetailPage}");
                },
                child: Text(
                  "See more",
                  style: AppTextStyle.homeSeeMoreSmall,
                ),
              )
            ],
          ),
        ),

        const SizedBox(height: 5),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: SizedBox(
            height: 220,
            child: ListView.separated(
              separatorBuilder: (context, index)=> const SizedBox(width: 10),
              scrollDirection: Axis.horizontal,
              itemCount: assets.length,
              itemBuilder: (context, index){
                return GestureDetector(
                  onTap: (){
                    context.go("${AppRouteName.mainPage}${AppRouteName.homePage.substring(1)}/${AppRouteName.homeDetailPage}");
                  },
                  child: Column(
                    children: [
                      SizedBox(
                        width: 160.w,
                        height: 160.h,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                assets[index]
                              ),
                              fit: BoxFit.cover
                            )
                          ),
                        ),
                      ),

                      SizedBox(height: 15.h),

                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          texts[index],
                          style: AppTextStyle.homeCategoryTextMedium?.copyWith(
                              color: AppColors.c2E2E5D
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
