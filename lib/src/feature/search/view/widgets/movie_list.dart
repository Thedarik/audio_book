import 'package:flutter/material.dart';

import '../../../../core/style/colors.dart';
import '../../../../core/style/text_style.dart';

class MovieListSearch extends StatelessWidget {
  const MovieListSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 220,
        child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(width: 17),
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Column(
              children: [
                const SizedBox(
                  width: 160,
                  height: 160,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: AppColors.red
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    "The Fire Queen",
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
