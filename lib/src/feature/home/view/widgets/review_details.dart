import 'package:flutter/material.dart';

import '../../../../core/style/colors.dart';
import '../../../../core/style/text_style.dart';

class ReviewDetails extends StatelessWidget {
  const ReviewDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 50,
                width: 50,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(5)
                  ),
                ),
              ),

              const SizedBox(width: 15),

              Text(
                "Ronald Richards",
                style: AppTextStyle.homeSeeMoreSmall?.copyWith(
                    color: AppColors.c2E2E5D,
                    fontSize: 16
                ),
              ),

            ],
          ),

          const SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.only(right: 70),
            child: SizedBox(
              width: 303,
              child: Text(
                  "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Exercitation veniam consequat sunt nostrud amet. Velit officia consequat duis enim velit mollit. ",
                  style: AppTextStyle.homeSeeMoreSmall?.copyWith(
                      color: AppColors.c6A6A8B,
                      fontWeight: FontWeight.w300
                  )
              ),
            ),
          )
        ],
      ),
    );
  }
}
