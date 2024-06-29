import 'package:audio_book/src/core/style/colors.dart';
import 'package:audio_book/src/core/style/text_style.dart';
import 'package:audio_book/src/feature/home/view/widgets/author_texts.dart';
import 'package:audio_book/src/feature/home/view/widgets/categories.dart';
import 'package:audio_book/src/feature/home/view/widgets/play_buttons.dart';
import 'package:audio_book/src/feature/home/view/widgets/rating_star.dart';
import 'package:audio_book/src/feature/home/view/widgets/review_details.dart';
import 'package:audio_book/src/feature/home/view/widgets/summary_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class BookDetailPage extends StatefulWidget {
  const BookDetailPage({super.key});

  @override
  State<BookDetailPage> createState() => _BookDetailPageState();
}

class _BookDetailPageState extends State<BookDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 22.sp,
                  color: AppColors.c2E2E5D,
                )),
            Text("Harry Potter and The Sorc...", style: AppTextStyle.homeCategoriesMedium?.copyWith(
              fontWeight: FontWeight.w500
            ),),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_horiz,
                  size: 22.sp,
                  color: AppColors.c2E2E5D,
                ))
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 25.h),
              SizedBox(
                height: 260.h,
                width: 260.w,
                child: const DecoratedBox(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/images/harry_potter.png"
                          ),
                          fit: BoxFit.cover
                      )
                  ),
                )
              ),
              SizedBox(height: 25.h),
              const AuthorTexts(),
              SizedBox(height: 20.h),

              Padding(
                padding: EdgeInsets.only(left: 38.w),
                child: RatingStar1(size: 24,),
              ),

              SizedBox(height: 12.h),

              const Categories(),
              SizedBox(height: 30.h),
              const PlayButtons(),
              SizedBox(height: 30.h),
              Padding(
                padding: EdgeInsets.only(right: 245.w),
                child: Text(
                  "Summary",
                  style: AppTextStyle.homeSeeMoreSmall?.copyWith(color: AppColors.c2E2E5D),
                ),
              ),
              SizedBox(height: 10.h),
              const SummaryText(),
              SizedBox(height: 40.h),
              Padding(
                padding: EdgeInsets.only(right: 256.w),
                child: Text(
                  "Review",
                  style: AppTextStyle.homeSeeMoreSmall?.copyWith(color: AppColors.c2E2E5D),
                ),
              ),
              SizedBox(height: 20.h),
              ReviewDetails(),
              SizedBox(height: 30.h),
            ],
          ),
        ),
      ),
    );
  }
}
