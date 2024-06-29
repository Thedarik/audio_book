import 'package:audio_book/src/feature/home/view/widgets/rating_star.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/style/colors.dart';
import '../../../../core/style/text_style.dart';

class ReviewDetails extends StatelessWidget {
  final PageController _controller = PageController();
  final ValueNotifier<int> _currentIndexNotifier = ValueNotifier<int>(0);
  final List<Widget> pages = [
    Padding(
      padding: EdgeInsets.only(left: 40.w),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 50.h,
                width: 50.w,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(5)
                  ),
                ),
              ),


              Padding(
                padding: EdgeInsets.only(right: 15.w),
                child: Column(
                  children: [
                    Text(
                      "Ronald Richards",
                      style: AppTextStyle.homeSeeMoreSmall?.copyWith(
                          color: AppColors.c2E2E5D,
                          fontSize: 16
                      ),
                    ),


                    Padding(
                      padding: EdgeInsets.only(left: 24.w),
                      child: Row(
                        children: [
                          RatingStar(size: 16,),

                          SizedBox(width: 12.w,),

                          Text(
                            "2 days ago",
                            style: AppTextStyle.homeCategoryTextMedium?.copyWith(
                                fontWeight: FontWeight.w400,
                                color: AppColors.c9292A2,
                                fontSize: 10
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

            ],
          ),

          SizedBox(height: 10.h),

          Padding(
            padding: EdgeInsets.only(right: 70.w),
            child: SizedBox(
              width: 303,
              child: Text(
                  "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Exercitation veniam consequat sunt nostrud amet. Velit officia consequat duis enim velit mollit. ",
                  style: AppTextStyle.homeSeeMoreSmall?.copyWith(
                      color: AppColors.c6A6A8B,
                      fontWeight: FontWeight.w300
                  )
              ),
            ),
          ),
        ],
      ),
    ),
    Padding(
      padding: EdgeInsets.only(left: 40.w),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 50.h,
                width: 50.w,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(5)
                  ),
                ),
              ),


              Padding(
                padding: EdgeInsets.only(right: 15.w),
                child: Column(
                  children: [
                    Text(
                      "Ronald Richards",
                      style: AppTextStyle.homeSeeMoreSmall?.copyWith(
                          color: AppColors.c2E2E5D,
                          fontSize: 16
                      ),
                    ),


                    Padding(
                      padding: EdgeInsets.only(left: 24.w),
                      child: Row(
                        children: [
                          RatingStar(size: 16,),

                          SizedBox(width: 12.w,),

                          Text(
                            "2 days ago",
                            style: AppTextStyle.homeCategoryTextMedium?.copyWith(
                                fontWeight: FontWeight.w400,
                                color: AppColors.c9292A2,
                                fontSize: 10
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

            ],
          ),

          SizedBox(height: 10.h),

          Padding(
            padding: EdgeInsets.only(right: 70.w),
            child: SizedBox(
              width: 303,
              child: Text(
                  "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Exercitation veniam consequat sunt nostrud amet. Velit officia consequat duis enim velit mollit. ",
                  style: AppTextStyle.homeSeeMoreSmall?.copyWith(
                      color: AppColors.c6A6A8B,
                      fontWeight: FontWeight.w300
                  )
              ),
            ),
          ),
        ],
      ),
    ),
    Padding(
      padding: EdgeInsets.only(left: 40.w),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 50.h,
                width: 50.w,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(5)
                  ),
                ),
              ),


              Padding(
                padding: EdgeInsets.only(right: 15.w),
                child: Column(
                  children: [
                    Text(
                      "Ronald Richards",
                      style: AppTextStyle.homeSeeMoreSmall?.copyWith(
                          color: AppColors.c2E2E5D,
                          fontSize: 16
                      ),
                    ),


                    Padding(
                      padding: EdgeInsets.only(left: 24.w),
                      child: Row(
                        children: [
                          RatingStar(size: 16,),

                          SizedBox(width: 12.w,),

                          Text(
                            "2 days ago",
                            style: AppTextStyle.homeCategoryTextMedium?.copyWith(
                                fontWeight: FontWeight.w400,
                                color: AppColors.c9292A2,
                                fontSize: 10
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

            ],
          ),

          SizedBox(height: 10.h),

          Padding(
            padding: EdgeInsets.only(right: 70.w),
            child: SizedBox(
              width: 303,
              child: Text(
                  "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Exercitation veniam consequat sunt nostrud amet. Velit officia consequat duis enim velit mollit. ",
                  style: AppTextStyle.homeSeeMoreSmall?.copyWith(
                      color: AppColors.c6A6A8B,
                      fontWeight: FontWeight.w300
                  )
              ),
            ),
          ),
        ],
      ),
    ),
  ];
  ReviewDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: PageView(
            onPageChanged: (index) {
              _currentIndexNotifier.value = index;
            },
            controller: _controller,
            children: pages,
          ),
        ),

        Padding(
          padding: EdgeInsets.only(right: 235.w),
          child: SmoothPageIndicator(
            effect: const ExpandingDotsEffect(
                activeDotColor: AppColors.c4838D1,
                expansionFactor: 1.1,
                dotWidth: 15,
                dotHeight: 15,
                spacing: 12,
                dotColor: Color(0xFFD5D5E3),),
                controller: _controller,
                count: pages.length,
          ),
        ),
      ],
    );
  }
}
