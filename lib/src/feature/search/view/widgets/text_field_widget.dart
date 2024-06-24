import 'package:flutter/material.dart';

import '../../../../core/style/colors.dart';
import '../../../../core/style/text_style.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  const TextFieldWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 60,
        child: TextField(
          controller: controller,
          style: AppTextStyle.searchRecommendationMedium?.copyWith(
              fontSize: 16,
              color: AppColors.c2E2E5D,
              fontWeight: FontWeight.w500
          ),
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              hintText: "Search Books or Author",
              hintStyle: AppTextStyle.searchRecommendationMedium?.copyWith(
                  fontSize: 16,
                  color: AppColors.cB8B8C7,
                  fontWeight: FontWeight.w600
              ),
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(13)
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(13)
              ),
              filled: true,
              fillColor: AppColors.cF5F5FA
          ),
        ),
      ),
    );
  }
}
