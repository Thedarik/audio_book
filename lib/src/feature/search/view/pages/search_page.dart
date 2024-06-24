import 'package:audio_book/src/core/style/images.dart';
import 'package:audio_book/src/core/style/text_style.dart';
import 'package:audio_book/src/feature/home/view/widgets/movie_list.dart';
import 'package:audio_book/src/feature/search/view/widgets/recommendations.dart';
import 'package:audio_book/src/feature/search/view/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';

import '../../../../core/style/colors.dart';

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
      body: Column(
        children: [
          const SizedBox(height: 60),

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

          const SizedBox(height: 20),

          Recommendations(widget: widgets, text: texts),

          Padding(
            padding: const EdgeInsets.only(right: 255),
            child: Text(
              "Latest Search",
              style: AppTextStyle.searchRecommendationMedium,
            ),
          ),

          const SizedBox(height: 10),

          const MovieList()
        ],
      ),
    );
  }
}
