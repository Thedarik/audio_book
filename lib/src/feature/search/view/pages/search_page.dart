import 'package:audio_book/src/core/style/images.dart';
import 'package:audio_book/src/core/style/text_style.dart';
import 'package:audio_book/src/feature/search/view/widgets/movie_list.dart';
import 'package:audio_book/src/feature/search/view/widgets/recommendations.dart';
import 'package:audio_book/src/feature/search/view/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routes/app_route_name.dart';
import '../../../home/view/widgets/logo_text.dart';


class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController controller = TextEditingController();

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
                height: 40.h,
                width: 40.w,
                child: AppImages.mainLogoIcon,
              ),
              SizedBox(
                width: 5.w,
              ),
              const LogoText(),
              const Spacer(),
              GestureDetector(
                onTap: (){
                  context.go("${AppRouteName.mainPage}${AppRouteName.settingPage.substring(1)}");
                },
                child: AppImages.settingIcon,
              ),
            ],
          ),
        ),
      ),
      body: Column(
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

          TextFieldWidget(controller: controller),

          SizedBox(height: 50.h),

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

          const MovieListSearch()
        ],
      ),
    );
  }
}
