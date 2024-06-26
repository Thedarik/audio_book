import 'package:flutter/material.dart';

import '../../../../core/style/colors.dart';
import '../../../../core/style/text_style.dart';

class MovieListSearch extends StatelessWidget {
  const MovieListSearch({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> assets = [
      "assets/images/the_black_witch.png",
      "assets/images/the_prisoners_key.png",
      "assets/images/the_kidnappers.png",
      "assets/images/the_fire_queen.png",
      "assets/images/light_mage.png"
    ];
    List<String> texts = [
      "The Black Witch",
      "The Prisoners Key",
      "The Kidnappers",
      "The Fire Queen",
      "Light Mage"
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 220,
        child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(width: 17),
          scrollDirection: Axis.horizontal,
          itemCount: assets.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                SizedBox(
                  width: 160,
                  height: 160,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                assets[index]
                            ),
                          fit: BoxFit.cover
                        )
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    texts[index],
                    style: AppTextStyle.homeCategoryTextMedium?.copyWith(
                        color: AppColors.c2E2E5D),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
