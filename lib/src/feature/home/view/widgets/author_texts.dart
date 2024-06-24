import 'package:flutter/material.dart';

import '../../../../core/style/colors.dart';
import '../../../../core/style/text_style.dart';

class AuthorTexts extends StatelessWidget {
  const AuthorTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 60),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "Harry Potter and the Sorcer...\n",
              style: AppTextStyle.homeCategoryTextMedium?.copyWith(
                fontSize: 20,
              ),
            ),
            const TextSpan(
              text: "\n",
            ),
            TextSpan(
              text: "J.K. Rowling",
              style: AppTextStyle.homeCategoriesMedium?.copyWith(
                color: AppColors.c9292A2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
