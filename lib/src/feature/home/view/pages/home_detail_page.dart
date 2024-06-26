import 'package:audio_book/src/core/style/colors.dart';
import 'package:audio_book/src/core/style/text_style.dart';
import 'package:audio_book/src/feature/home/model/home_book_model.dart';
import 'package:audio_book/src/feature/home/view/widgets/vertical_movies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class HomeDetailPage extends StatelessWidget {
  const HomeDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bookList = GoRouterState.of(context).extra as List<BestSeller>;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: <Widget>[
            SizedBox(width: 15.w),

            IconButton(
                onPressed: (){
                  context.pop();
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 24,
                  color: AppColors.c2E2E5D,
                )
            ),

            SizedBox(width: 60.w),

            Text(
              "New Releases",
              style: AppTextStyle.homeCategoryTextMedium?.copyWith(
                  color: AppColors.c2E2E5D
              ),
            )
          ],
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 20.h),

          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: VerticalMovies(listBook: bookList,),
            ),
          )
        ],
      ),
    );
  }
}
