import 'package:audio_book/src/feature/home/view/widgets/best_sellers.dart';
import 'package:audio_book/src/feature/home/view/widgets/home_categories.dart';
import 'package:audio_book/src/feature/home/view/widgets/movie_banner.dart';
import 'package:audio_book/src/feature/home/view/widgets/recommendation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20.h),
            const HomeCategories(),
            SizedBox(height: 30.h),
            const Recommendation(),
            SizedBox(height: 30.h),
            const BestSellers(),
            SizedBox(height: 30.h),
            const MovieBanner(categoryText: "New Releases", movieName: "The Black Witch"),
            SizedBox(height: 40.h),
            const MovieBanner(categoryText: "Trending Now", movieName: "The Kidnapper's"),
          ],
        ),
      ),
    );
  }
}
