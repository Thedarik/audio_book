import 'dart:developer';

import 'package:audio_book/src/feature/auth/view/widgets/resend_code_widget.dart';
import 'package:audio_book/src/feature/auth/view/widgets/useful_widgets_for_all_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../core/api/api.dart';
import '../../../../core/storage/app_storage.dart';
import '../../../../core/style/colors.dart';
import '../../../../core/style/text_style.dart';

sealed class ConfirmationCodeWidgets {

  static confirmationTexts(){
    return Column(
      children: [
        Row(
          children: [
            fixedSizedBox(height: 0, width: 48.w),
            Text(
              "Confirmation Code",
              style: AppTextStyle.loginTitleMedium,
            ),
            const Spacer(),
          ],
        ),
        fixedSizedBox(height: 16.h),
        Row(
          children: [
            fixedSizedBox(height: 0, width: 48.w),
            Text(
              "Enter the confirmation code we sent to",
              style: AppTextStyle.loginForgotPasswordOffSmall,
            ),
            const Spacer(),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            fixedSizedBox(height: 0, width: 48.w),
            Text(
              "your@mail.com.",
              style: AppTextStyle.registerConfirmSubtitleSmall,
            ),
          ],
        ),
      ],
    );
  }

  static confirmationResendCode(TimerProvider timerProvider){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        fixedSizedBox(height: 0, width: 10),
        Text(
          "Didn’t receive the code? ",
          style: AppTextStyle.registerReceiveSmall,
        ),
        Consumer<TimerProvider>(
          builder: (context, timer, _) {
            return timer.isActive
                ? Text(
              timerProvider.secondsLeft.toString(),
              style: AppTextStyle.registerTermsOrangeSmall,
            )
                : InkWell(
              borderRadius: BorderRadius.circular(8),
              onTap: () async {
                String? token = await AppStorage.load(
                    key: StorageKey.token);
                log('TOKEN: $token');
                if (token != null) {
                  String? res = await Api.resendCode(
                      Api.apiPostSignUpResend, token);
                  if (res != null) {
                    await AppStorage.store(
                        key: StorageKey.token, value: res);
                    log("KETTII");
                  }
                  timer.startTimer();
                } else {
                  log("Empty token");
                }
              },
              child: Text("Resend",
                  style: AppTextStyle
                      .registerTermsOrangeSmall),
            );
          },
        )
      ],
    );
  }

  static confirmationCancelButton(BuildContext context){
    return Column(
      children: [
        fixedSizedBox(height: 16.h),
        MaterialButton(
          onPressed: () {
            context.pop();
          },
          minWidth: double.infinity,
          height: 56,
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                  width: 1, color: AppColors.c4838D1)),
          child: Text(
            "Cancel",
            style: AppTextStyle.registerCancelButtonMedium,
          ),
        ),
      ],
    );
  }
}