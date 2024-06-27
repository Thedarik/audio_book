import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routes/app_route_name.dart';
import '../../../../core/style/colors.dart';
import '../../../../core/style/text_style.dart';

class BestSellers extends StatelessWidget {
  const BestSellers({super.key});

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
                "Best Seller",
                style: AppTextStyle.homeCategoryTextMedium,
              ),

              const SizedBox(width: 120),

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
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            height: 150,
            child: ListView.separated(
              separatorBuilder: (context, index)=> const SizedBox(width: 20),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index){
                return GestureDetector(
                  onTap: (){
                    context.go("${AppRouteName.mainPage}${AppRouteName.homePage.substring(1)}/${AppRouteName.homeDetailPage}");
                  },
                  child: SizedBox(
                    width: 315.w,
                    height: 145.h,
                    child: DecoratedBox(
                      decoration: const BoxDecoration(
                          color: AppColors.cF5F5FA,
                          borderRadius: BorderRadius.all(
                              Radius.circular(15)
                          )
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 10.h),

                          Row(
                            children: [
                              SizedBox(width: 10.w),

                              SizedBox(
                                height: 120.h,
                                width: 120.w,
                                child: const DecoratedBox(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/images/light_mage.png"),
                                        // fit: BoxFit.cover
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15)
                                      )
                                  ),
                              ),
                              ),

                              SizedBox(width: 15.w),

                              Column(
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      children: <InlineSpan>[
                                        TextSpan(
                                          text: "Light Mage\n",
                                          style: AppTextStyle.homeBookNameMedium,
                                        ),
                                        const TextSpan(
                                          text: "\n",
                                          style: TextStyle(fontSize: 10),
                                        ),
                                        TextSpan(
                                          text: "Laurie Forest",
                                          style: AppTextStyle.homeBookNameMedium?.copyWith(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.c6A6A8B,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  const SizedBox(height: 15),

                                  Text(
                                    "1000+ Listeners",
                                    style: AppTextStyle.homeBookNameMedium?.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.c6A6A8B,
                                    ),
                                  )

                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
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
