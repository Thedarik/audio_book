import 'package:audio_book/src/core/style/colors.dart';
import 'package:audio_book/src/core/style/text_style.dart';
import 'package:flutter/material.dart';

Widget categoryBuilder({required String category}) {
  return MaterialButton(
    minWidth: double.minPositive,
    onPressed: () {},
    shape: OutlineInputBorder(
      borderRadius: BorderRadius.circular(24),
      borderSide: const BorderSide(width: 1,color: AppColors.c4838D1)
    ),
    child: Text(
      category,
      style: AppTextStyle.personalizationCategorySmall,
    ),
  );
}

Widget categoryBuilder2({required String category}) {
  return MaterialButton(
    minWidth: double.maxFinite,
    onPressed: () {},
    shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(24),
        borderSide: const BorderSide(width: 1,color: AppColors.c4838D1)
    ),
    child: Text(
      category,
      style: AppTextStyle.personalizationCategorySmall2,
    ),
  );
}
