import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/style/colors.dart';
import '../../../../core/style/text_style.dart';
import '../../controller/category_state_notifier_controller.dart';

Widget categoryBuilder({required String category}) {
  return Consumer<CategoryStateNotifier>(
    builder: (context, categoryStateNotifier, child) {
      final isPressed = categoryStateNotifier.isPressed(category);
      return MaterialButton(
        minWidth: double.minPositive,
        onPressed: () {
          categoryStateNotifier.toggleCategory(category);
        },
        color: isPressed ? AppColors.c4838D1 : null,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: const BorderSide(width: 1, color: AppColors.c4838D1),
        ),
        child: Text(
          category,
          style: isPressed
              ? AppTextStyle.personalizationCategorySmall?.copyWith(color: Colors.white)
              : AppTextStyle.personalizationCategorySmall3,
        ),
      );
    },
  );
}
