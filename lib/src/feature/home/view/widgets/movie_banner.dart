import 'package:audio_book/src/feature/home/model/home_book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../setup.dart';
import '../../../../core/routes/app_route_name.dart';
import '../../../../core/style/colors.dart';
import '../../../../core/style/text_style.dart';

class MovieBanner extends StatelessWidget {
  final String categoryText;
  final List<BestSeller> bookList;
  const MovieBanner({super.key, required this.categoryText, required this.bookList});

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
                  context.go(
                      "${AppRouteName.mainPage}${AppRouteName.homePage.substring(1)}/${AppRouteName.homeDetailPage}",
                      extra: bookList
                  );                },
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
              itemCount: bookList.length,
              itemBuilder: (context, index){
                return GestureDetector(
                  onTap: (){
                    context.go(
                        "${AppRouteName.mainPage}${AppRouteName.homePage.substring(1)}/${AppRouteName.homeDetailPage}",
                        extra: bookList
                    );                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 160.w,
                        height: 160.h,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "$address/api/file/image/${bookList[index].id}"
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
                          bookList[index].title!.length >= 18
                              ? "${bookList[index].title?.substring(0, 10)}..."
                              : bookList[index].title!,
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
