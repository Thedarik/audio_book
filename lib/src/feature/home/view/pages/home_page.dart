import 'package:audio_book/src/feature/home/view/widgets/best_sellers.dart';
import 'package:audio_book/src/feature/home/view/widgets/home_categories.dart';
import 'package:audio_book/src/feature/home/view/widgets/movie_banner.dart';
import 'package:audio_book/src/feature/home/view/widgets/recommendation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routes/app_route_name.dart';
import '../../../../core/style/images.dart';
import '../widgets/logo_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              SizedBox(
                height: 40,
                width: 40,
                child: AppImages.mainLogoIcon,
              ),
              const SizedBox(
                width: 5,
              ),
              const LogoText(),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  context.go("${AppRouteName.mainPage}${AppRouteName.homePage.substring(1)}/${AppRouteName.settingPage}");
                },
                child: AppImages.settingIcon,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20.h),
            const HomeCategories(),
            SizedBox(height: 20.h),
            const Recommendation(),
            SizedBox(height: 30.h),
            const BestSellers(),
            SizedBox(height: 30.h),
            const MovieBanner(
              categoryText: "New Releases",
            ),
            SizedBox(height: 20.h),
            const MovieBanner(
              categoryText: "Trending Now",
            ),
          ],
        ),
      ),
    );
  }
}
