import 'package:flutter/material.dart';

import '../../../../core/style/text_style.dart';

class Recommendation extends StatelessWidget {
  const Recommendation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Recommended For You",
                style: AppTextStyle.homeCategoryTextMedium,
              ),

              const SizedBox(width: 7),

              Text(
                "See more",
                style: AppTextStyle.homeSeeMoreSmall,
              )
            ],
          ),
        ),

        const SizedBox(height: 20),

        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: SizedBox(
            height: 310,
            child: ListView.separated(
              separatorBuilder: (context, index)=> const SizedBox(width: 20),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index){
                return const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 200,
                      height: 300,
                      child: ColoredBox(
                          color: Colors.blue
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
