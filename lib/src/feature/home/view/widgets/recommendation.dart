import 'package:audio_book/src/feature/home/model/home_book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routes/app_route_name.dart';
import '../../../../core/style/text_style.dart';

class Recommendation extends StatelessWidget {
  final List<BestSeller> image;
  const Recommendation({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Recommended For You",
                style: AppTextStyle.homeCategoryTextMedium,
              ),

              SizedBox(width: 7.w),

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
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: SizedBox(
            height: 310.h,
            child: ListView.separated(
              separatorBuilder: (context, index)=> SizedBox(width: 10.w),
              scrollDirection: Axis.horizontal,
              itemCount: image.length,
              itemBuilder: (context, index){
                return GestureDetector(
                  onTap: (){
                    context.go(
                        "${AppRouteName.mainPage}${AppRouteName.homePage.substring(1)}/${AppRouteName.homeDetailPage}",
                        extra: image
                    );
                  },
                  child: SizedBox(
                    width: 200.w,
                    height: 300.h,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage("http://192.168.100.110:8080/api/file/image/${image[index].id}"),
                            fit: BoxFit.cover
                          )
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
