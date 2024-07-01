import 'package:audio_book/src/feature/home/view/widgets/rating_star.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routes/app_route_name.dart';
import '../../../../core/style/colors.dart';
import '../../../../core/style/text_style.dart';
import '../../model/home_book_model.dart';

class BestSellers extends StatelessWidget {
  final List<BestSeller> bookList;
  const BestSellers({
    super.key,
    required this.bookList,
  });

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

        SizedBox(height: 5.h),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            height: 150,
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(width: 20),
              scrollDirection: Axis.horizontal,
              itemCount: bookList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    context.go(
                        "${AppRouteName.mainPage}${AppRouteName.homePage.substring(1)}/${AppRouteName.homeDetailPage}",
                      extra: bookList
                    );
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
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15)
                                      )
                                  ),
                                ),
                              ),
                              SizedBox(width: 15.w),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 20.h,
                                      child: Text(
                                        bookList[index].title!.length >= 20
                                            ? "${bookList[index].title?.substring(0, 12)}..."
                                            : bookList[index].title!,
                                        style: AppTextStyle.homeBookNameMedium,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                    ),
                                    SizedBox(height: 5.h),
                                    SizedBox(
                                      height: 15.h,
                                      child: Text(
                                        bookList[index].author!,
                                        style: AppTextStyle.homeBookNameMedium?.copyWith(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.c6A6A8B,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                    ),
                                    SizedBox(height: 15.h),
                                    RatingStar(size: 20, rating: bookList[index].rating!.toDouble()),
                                    SizedBox(height: 10.h),
                                    Text(
                                      "1000+ Listeners",
                                      style: AppTextStyle.homeBookNameMedium?.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.c6A6A8B,
                                      ),
                                    )
                                  ],
                                ),
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
