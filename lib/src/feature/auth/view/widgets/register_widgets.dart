
import 'package:flutter/material.dart';

import '../../../../core/style/colors.dart';
import '../../../../core/style/text_style.dart';

sealed class RegisterWidgets{
  static Widget registerPrivacyText(){
    return Column(
      children: [
        Row(
          children: [
            Text(
              "By signing up, you agree to our ",
              style: AppTextStyle.registerTerms2Small,
            ),
            InkWell(
              splashColor: AppColors.cF5F5FA,
              borderRadius: BorderRadius.circular(8),
              onTap: () {},
              child: Text(
                "Terms  ",
                style: AppTextStyle.loginForgotPasswordSmall,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InkWell(
              splashColor: AppColors.cF5F5FA,
              borderRadius: BorderRadius.circular(8),
              onTap: () {},
              child: Text(
                "Data Policy ",
                style: AppTextStyle.loginForgotPasswordSmall,
              ),
            ),
            Text(
              "and ",
              style: AppTextStyle.registerTerms2Small,
            ),
            InkWell(
              splashColor: AppColors.cF5F5FA,
              borderRadius: BorderRadius.circular(8),
              onTap: () {},
              child: Text(
                "Cookies Policy.",
                style: AppTextStyle.loginForgotPasswordSmall,
              ),
            ),
          ],
        ),
      ],
    );

  }
}