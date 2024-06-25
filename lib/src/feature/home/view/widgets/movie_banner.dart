import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routes/app_route_name.dart';
import '../../../../core/style/colors.dart';
import '../../../../core/style/text_style.dart';

class MovieBanner extends StatelessWidget {
  final String categoryText;
  final String movieName;
  const MovieBanner({super.key, required this.categoryText, required this.movieName});

  @override
  Widget build(BuildContext context) {
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

        const SizedBox(height: 20),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: SizedBox(
            height: 220,
            child: ListView.separated(
              separatorBuilder: (context, index)=> const SizedBox(width: 10),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index){
                return Column(
                  children: [
                    const SizedBox(
                      width: 160,
                      height: 160,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: AppColors.cF5F5FA,
                        ),
                      ),
                    ),

                    const SizedBox(height: 15),

                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(
                        movieName,
                        style: AppTextStyle.homeCategoryTextMedium?.copyWith(
                            color: AppColors.c2E2E5D
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
