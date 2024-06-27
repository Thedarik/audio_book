import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routes/app_route_name.dart';
import '../../../../core/style/text_style.dart';

class Recommendation extends StatelessWidget {
  const Recommendation({super.key});

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
                "Recommended For You",
                style: AppTextStyle.homeCategoryTextMedium,
              ),

              const SizedBox(width: 7),

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
          padding: const EdgeInsets.only(left: 30),
          child: SizedBox(
            height: 310,
            child: ListView.separated(
              separatorBuilder: (context, index)=> const SizedBox(width: 20),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index){
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                      onTap: (){
                        context.go("${AppRouteName.mainPage}${AppRouteName.homePage.substring(1)}/${AppRouteName.homeDetailPage}");
                      },
                      child: const SizedBox(
                        width: 200,
                        height: 300,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/the_silence.png"),
                                // fit: BoxFit.fitWidth
                              )
                          ),
                        ),
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
