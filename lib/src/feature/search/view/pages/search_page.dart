import 'package:audio_book/src/core/style/images.dart';
import 'package:audio_book/src/core/style/text_style.dart';
import 'package:audio_book/src/feature/home/view/widgets/movie_list.dart';
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
  List<String> texts = [
    "Business",
    "Personal...",
    "Music",
    "Photogra..."
  ];

  List<Widget> widgets = [
    AppImages.businessIcon,
    AppImages.personalIcon,
    AppImages.musicsIcon,
    AppImages.photographyIcon
  ];

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
            padding: const EdgeInsets.only(right: 276),
            child: Text(
              "Explore",
              style: AppTextStyle.searchTitleLarge,
            ),
          ),

          const SizedBox(height: 20),

          TextFieldWidget(controller: controller),

          const SizedBox(height: 50),

          Padding(
            padding: const EdgeInsets.only(right: 150),
            child: Text(
              "Recommended Categories",
              style: AppTextStyle.searchRecommendationMedium,
            ),
          ),

          SizedBox(height: 20.h),

          Recommendations(widget: widgets, text: texts),

          SizedBox(height: 25.h),

          Padding(
            padding: const EdgeInsets.only(right: 255),
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
