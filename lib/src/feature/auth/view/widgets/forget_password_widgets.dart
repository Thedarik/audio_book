import 'package:audio_book/src/core/localization/tr_language.dart';
import 'package:audio_book/src/feature/auth/view/widgets/useful_widgets_for_all_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routes/app_route_name.dart';
import '../../../../core/style/colors.dart';
import '../../../../core/style/text_style.dart';

sealed class ForgetPasswordWidgets {
  static forgetPasswordCancelButton(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        context.pop();
      },
      minWidth: double.infinity,
      height: 56,
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(width: 1, color: AppColors.c4838D1)),
      child: Text(
        "Cancel",
        style: AppTextStyle.registerCancelButtonMedium,
      ),
    );
  }

  static forgetPasswordTexts() {
    return Column(
      children: [
        fixedSizedBox(height: 24),
        Row(
          children: [
            fixedSizedBox(height: 0, width: 48),
            Text(
              "Forget Password",
              style: AppTextStyle.loginTitleMedium,
            ),
            const Spacer(),
          ],
        ),
        fixedSizedBox(height: 16),
        Row(
          children: [
            fixedSizedBox(height: 0, width: 48),
            Text(
              "Please fill email or phone number and \nwe'll send you a link to get back into your\naccount.",
              style: AppTextStyle.loginForgotPasswordOffSmall,
            ),
          ],
        ),
        fixedSizedBox(height: 16),
      ],
    );
  }

  static Widget forgetPasswordCloseButton(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        context.go(AppRouteName.loginPage);
      },
      minWidth: double.infinity,
      height: 56,
      shape: OutlineInputBorder(borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(width: 1, color: AppColors.c4838D1)),
      child: Text(
        "Close".tr,
        style: AppTextStyle.registerCancelButtonMedium,
      ),
    );
  }

  static Widget forgetPassTexts2(){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Email Sent".tr,
              style: AppTextStyle.loginTitleMedium,
            ),
            const Spacer(),
          ],
        ),
        fixedSizedBox(height: 16),
        fixedSizedBox(height: 0, width: 48),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "We sent an email to ".tr,
              style: AppTextStyle.loginForgotPasswordOffSmall,
            ),
            Text(
              "y***@mail.com",
              style: AppTextStyle.registerTermsSmall,
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "with a link to get back into your account.".tr,
              style: AppTextStyle.loginForgotPasswordOffSmall,
            ),
          ],
        ),
      ],
    );
  }
}
