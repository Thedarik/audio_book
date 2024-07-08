import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/style/colors.dart';
import '../../../../core/style/text_style.dart';

class AuthorTexts extends StatelessWidget {
  final String author;
  final String title;
  const AuthorTexts({super.key, required this.author, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 38.w),
      child: Align(
        alignment: Alignment.centerLeft,
        child: RichText(
          textAlign: TextAlign.left,
          text: TextSpan(
            children: [
              TextSpan(
                text: title,
                style: AppTextStyle.homeCategoryTextMedium?.copyWith(
                  fontSize: 20,
                ),
              ),
              const TextSpan(
                text: "\n",
              ),
              TextSpan(
                text: author,
                style: AppTextStyle.homeCategoriesMedium?.copyWith(
                  color: AppColors.c9292A2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
