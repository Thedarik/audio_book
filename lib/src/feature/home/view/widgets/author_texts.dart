import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/style/colors.dart';
import '../../../../core/style/text_style.dart';

class AuthorTexts extends StatelessWidget {
  const AuthorTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 50.w),
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
