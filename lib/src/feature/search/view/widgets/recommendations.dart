import 'package:flutter/material.dart';

import '../../../../core/style/colors.dart';
import '../../../../core/style/text_style.dart';

class Recommendations extends StatelessWidget {
  final List<Widget> widget;
  final List<String> text;
  const Recommendations({super.key, required this.widget, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Wrap(
          spacing: 16,
          runSpacing: 16,
          children: List.generate(4, (index) {
            return SizedBox(
              height: 48,
              width: 160,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: AppColors.cF5F5FA,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    widget[index],
                    const SizedBox(width: 5),
                    Text(
                      text[index],
                      style: AppTextStyle.searchCategoryMedium,
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
