import 'package:audio_book/src/core/style/colors.dart';
import 'package:audio_book/src/core/style/text_style.dart';
import 'package:audio_book/src/feature/search/model/search_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../setup.dart';
import '../../../../core/routes/app_route_name.dart';
import '../../model/home_book_model.dart';

class VerticalMovies1 extends StatelessWidget {
  final List<SearchModel?> listBook;
  const VerticalMovies1({super.key, required this.listBook});

  @override
  Widget build(BuildContext context) {
    List<String> assets = [
      "assets/images/the_black_witch.png",
      "assets/images/the_prisoners_key.png",
      "assets/images/the_kidnappers.png",
      "assets/images/the_fire_queen.png",
    ];

    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15.w,
        childAspectRatio: 0.65.sp,
      ),
      itemCount: listBook.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            context.go(
                "${AppRouteName.mainPage}${AppRouteName.homePage.substring(1)}/${AppRouteName.homeDetailPage}/${AppRouteName.bookPage}"
            );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 160.h,
                width: 160.w,
                child: DecoratedBox(
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage(assets[index]))),
                ),
              ),
              SizedBox(height: 8.h),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: RichText(
                  overflow: TextOverflow.fade,
                  textAlign: TextAlign.start,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: listBook[index]!.title.length >= 15
                            ? "${listBook[index]!.title.substring(0, 12)}...\n"
                            : "${listBook[index]!.title}\n",
                        style: AppTextStyle.homeCategoriesMedium?.copyWith(fontWeight: FontWeight.w500),
                      ),
                      TextSpan(
                        text: listBook[index]!.author,
                        style: AppTextStyle.homeSubtitleSmall?.copyWith(color: AppColors.c4838D1),
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


class VerticalMovies extends StatelessWidget {
  final List<BestSeller> listBook;
  const VerticalMovies({super.key, required this.listBook});

  @override
  Widget build(BuildContext context) {

    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15.w,
        childAspectRatio: 0.65.sp,
      ),
      itemCount: listBook.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            context.go(
                "${AppRouteName.mainPage}${AppRouteName.homePage.substring(1)}/${AppRouteName.homeDetailPage}/${AppRouteName.bookPage}",
              extra: [listBook[index]]
            );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 160.h,
                width: 160.w,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage("$address/api/file/image/${listBook[index].id}"),
                        fit: BoxFit.cover
                      )
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: listBook[index].title!.length >= 15
                              ? "${listBook[index].title?.substring(0, 12)}...\n"
                              : "${listBook[index].title!}\n",
                          style: AppTextStyle.homeCategoriesMedium?.copyWith(fontWeight: FontWeight.w500),),
                      TextSpan(
                        text: listBook[index].author!.length >= 15
                            ? "${listBook[index].author?.substring(0, 10)}..."
                            : listBook[index].author!,
                        style: AppTextStyle.homeSubtitleSmall?.copyWith(color: AppColors.c4838D1),
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
