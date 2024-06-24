import 'package:audio_book/src/core/style/colors.dart';
import 'package:flutter/cupertino.dart';

import '../../../../core/style/text_style.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 44),
      child: Row(
        children: [
          SizedBox(
            height: 32,
            width: 74,
            child: DecoratedBox(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(
                      color: AppColors.c6A6A8B,
                      width: 2
                  )
              ),
              child: Center(
                child: Text(
                  "Fantasy",
                  style: AppTextStyle.homeSubtitleSmall?.copyWith(
                      fontWeight: FontWeight.w700
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(width: 10),

          SizedBox(
            height: 32,
            width: 74,
            child: DecoratedBox(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(
                      color: AppColors.c6A6A8B,
                      width: 2
                  )
              ),
              child: Center(
                child: Text(
                  "Drama",
                  style: AppTextStyle.homeSubtitleSmall?.copyWith(
                      fontWeight: FontWeight.w700
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(width: 10),

          SizedBox(
            height: 32,
            width: 74,
            child: DecoratedBox(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(
                      color: AppColors.c6A6A8B,
                      width: 2
                  )
              ),
              child: Center(
                child: Text(
                  "Fiction",
                  style: AppTextStyle.homeSubtitleSmall?.copyWith(
                      fontWeight: FontWeight.w700
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
