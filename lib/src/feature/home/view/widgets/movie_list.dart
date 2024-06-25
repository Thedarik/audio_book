import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routes/app_route_name.dart';
import '../../../../core/style/colors.dart';
import '../../../../core/style/text_style.dart';

class MovieList extends StatelessWidget {
  const MovieList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index)=> const SizedBox(width: 20),
        itemCount: 5,
        itemBuilder: (context, index){
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
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
                          color: Colors.blue,
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),

                    Padding(
                      padding: const EdgeInsets.only(right: 25),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "The Black Witch",
                              style: AppTextStyle.homeCategoryTextMedium?.copyWith(
                                color: AppColors.c2E2E5D,
                              ),
                            ),

                            TextSpan(
                              text: "\nLaurie Forest",
                              style: AppTextStyle.homeSubtitleSmall?.copyWith(
                                color: AppColors.c4838D1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )

                  ],
                ),
              ),
      
              Column(
                children: [
                  const SizedBox(
                    height: 160,
                    width: 160,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
      
                  Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "The Black Witch",
                            style: AppTextStyle.homeCategoryTextMedium?.copyWith(
                              color: AppColors.c2E2E5D,
                            ),
                          ),
                          TextSpan(
                            text: "\nLaurie Forest",
                            style: AppTextStyle.homeSubtitleSmall?.copyWith(
                              color: AppColors.c4838D1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
      
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
