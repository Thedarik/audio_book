import 'package:audio_book/src/core/style/images.dart';
import 'package:audio_book/src/core/style/text_style.dart';
import 'package:audio_book/src/data/repository/app_repository_impl.dart';
import 'package:audio_book/src/feature/home/view/widgets/vertical_movies.dart';
import 'package:audio_book/src/feature/search/controller/search_controller.dart';
import 'package:audio_book/src/feature/search/view/widgets/movie_list.dart';
import 'package:audio_book/src/feature/search/view/widgets/recommendations.dart';
import 'package:audio_book/src/feature/search/view/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../core/routes/app_route_name.dart';
import '../../../home/view/widgets/logo_text.dart';
import '../../model/storage_model.dart';

class SearchPage extends StatefulWidget {
  final SearchBookController searchController;
  SearchPage({super.key}) : searchController = SearchBookController(AppRepositoryImpl());

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    controller.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
      body: Consumer<SearchBookController>(
        builder: (context, searchController, child) => SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.only(right: 248.w),
                child: Text(
                  "Explore",
                  style: AppTextStyle.searchTitleLarge,
                ),
              ),
              SizedBox(height: 20.h),
              TextFieldWidget1(
                controller: controller,
                onChanged: (text) async {
                  searchController.search(text);
                },
              ),
              SizedBox(height: 50.h),
              if (searchController.isLoading)
                const Center(
                  child: CircularProgressIndicator(),
                )
              else if (searchController.searchModel.isNotEmpty)
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: VerticalMovies1(
                    listBook: searchController.searchModel,
                  ),
                )
              else
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 137.w),
                      child: Text(
                        "Recommended Categories",
                        style: AppTextStyle.searchRecommendationMedium,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    const Recommendations(),
                    SizedBox(height: 25.h),
                    Padding(
                      padding: EdgeInsets.only(right: 236.w),
                      child: Text(
                        "Latest Search",
                        style: AppTextStyle.searchRecommendationMedium,
                      ),
                    ),
                    SizedBox(height: 15.h),
                    MovieListSearch()
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}


