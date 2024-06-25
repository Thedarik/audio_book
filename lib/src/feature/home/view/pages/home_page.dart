import 'package:audio_book/src/core/style/text_style.dart';
import 'package:audio_book/src/feature/home/view/widgets/best_sellers.dart';
import 'package:audio_book/src/feature/home/view/widgets/movie_banner.dart';
import 'package:audio_book/src/feature/home/view/widgets/recommendation.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 20),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Categories",
                      style: AppTextStyle.homeCategoryTextMedium,
                    ),
                    const SizedBox(width: 75),
                    Text(
                      "See more",
                      style: AppTextStyle.homeSeeMoreSmall,
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 30),
            const Recommendation(),
            const SizedBox(height: 30),
            const BestSellers(),
            const SizedBox(height: 30),
            const MovieBanner(categoryText: "New Releases", movieName: "The Black Witch"),
            const SizedBox(height: 40),
            const MovieBanner(categoryText: "Trending Now", movieName: "The Kidnapper's"),
          ],
        ),
      ),
    );
  }
}
