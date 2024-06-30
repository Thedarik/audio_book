import 'package:audio_book/src/data/repository/app_repository_impl.dart';
import 'package:audio_book/src/feature/home/controller/home_controller.dart';
import 'package:audio_book/src/feature/home/view/widgets/best_sellers.dart';
import 'package:audio_book/src/feature/home/view/widgets/home_categories.dart';
import 'package:audio_book/src/feature/home/view/widgets/movie_banner.dart';
import 'package:audio_book/src/feature/home/view/widgets/recommendation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../core/routes/app_route_name.dart';
import '../../../../core/style/images.dart';
import '../widgets/logo_text.dart';

class HomePage extends StatelessWidget {
  final HomeController homeController;
  HomePage({super.key}) : homeController = HomeController(AppRepositoryImpl());

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeController>(
      create: (context) => homeController..getHomeBooks(),
      child: Scaffold(
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
                    context.go(
                        "${AppRouteName.mainPage}${AppRouteName.homePage.substring(1)}/${AppRouteName.settingPage}");
                  },
                  child: AppImages.settingIcon,
                ),
              ],
            ),
          ),
        ),
        body: Consumer<HomeController>(
          builder: (context, controller, child) {
            return controller.isLoading ? const Center(
              child: CircularProgressIndicator(),
            ) : SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20.h),
                  const HomeCategories(),
                  SizedBox(height: 20.h),
                  const Recommendation(
                    image: "",
                  ),
                  SizedBox(height: 30.h),
                  BestSellers(
                    bookList: controller.homeBooksModel!.bestSeller,
                  ),
                  SizedBox(height: 30.h),
                  MovieBanner(
                    categoryText: "New Releases",
                    bookList: controller.homeBooksModel!.newRelease,
                  ),
                  SizedBox(height: 20.h),
                  MovieBanner(
                    categoryText: "Trending Now",
                    bookList: controller.homeBooksModel!.trendingNow,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
