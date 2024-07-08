import 'package:audio_book/src/feature/auth/view/widgets/useful_widgets_for_all_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../core/routes/app_route_name.dart';
import '../../../../core/style/colors.dart';
import '../../../../core/style/images.dart';
import '../../../../core/style/text_style.dart';
import '../../controller/check_box_controller.dart';
import 'login_text_field_widget.dart';

@immutable
class LoginWidgets {
  static loginBottomPart({
    required BuildContext context,
    required Key formKey,
    required String? Function(String?)? validateEmail,
    required String? Function(String?)? validatePassword,
    required TextEditingController controller1,
    required TextEditingController controller2,
    required FocusNode firstFocusNode,
    required FocusNode secondFocusNode,
    required Widget button,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            textFieldLogin(
              validator: validateEmail,
              controller: controller1,
              hintText: "Email",
              node: firstFocusNode,
              isError: false,
              keyboardType: TextInputType.emailAddress,
              context: context,
              nextNode: secondFocusNode,
            ),
            fixedSizedBox(height: 16.h),
            textFieldLogin(
              validator: validatePassword,
              controller: controller2,
              hintText: "Password",
              node: secondFocusNode,
              isError: false,
              keyboardType: TextInputType.visiblePassword,
              context: context,
            ),
            fixedSizedBox(height: 16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Consumer<CheckboxStateNotifier>(
                  builder: (context, checkboxStateNotifier, child) {
                    return Checkbox(
                      value: checkboxStateNotifier.isChecked,
                      onChanged: (value) {
                        checkboxStateNotifier.toggleCheckbox();
                      },
                      checkColor: AppColors.cBBB1FA,
                      side:
                          const BorderSide(width: 1, color: AppColors.cBBB1FA),
                    );
                  },
                ),
                fixedSizedBox(
                  height: 0,
                  width: 12.w,
                ),
                Text(
                  "Remember me",
                  style: AppTextStyle.loginRememberSmall,
                )
              ],
            ),
            fixedSizedBox(height: 16),
            button,
            fixedSizedBox(height: 32.h),
            Row(
              children: [
                const Spacer(),
                InkWell(
                  splashColor: AppColors.cF5F5FA,
                  borderRadius: BorderRadius.circular(8),
                  onTap: () {
                    context.go(
                        "${AppRouteName.loginPage}/${AppRouteName.forgetPasswordOne}");
                  },
                  child: Text(
                    "Forget Password ?",
                    style: AppTextStyle.loginForgotPasswordSmall,
                  ),
                ),
              ],
            ),
            fixedSizedBox(height: 32.h),
            Text(
              "Or login with",
              style: AppTextStyle.loginOrLoginWithSmall,
            ),
            fixedSizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaterialButton(
                  onPressed: () {},
                  minWidth: 87.w,
                  height: 56.h,
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:
                          const BorderSide(width: 1, color: AppColors.c4838D1)),
                  child: AppImages.googleIcon,
                ),
                MaterialButton(
                  onPressed: () {},
                  minWidth: 87.w,
                  height: 56.h,
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:
                          const BorderSide(width: 1, color: AppColors.c4838D1)),
                  child: AppImages.facebookIcon,
                ),
                MaterialButton(
                  onPressed: () {},
                  minWidth: 87.w,
                  height: 56.h,
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:
                          const BorderSide(width: 1, color: AppColors.c4838D1)),
                  child: AppImages.twitterIcon,
                ),
              ],
            ),
            fixedSizedBox(height: 24.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have an accoun’t ? ",
                  style: AppTextStyle.loginAccountSmall,
                ),
                InkWell(
                  onTap: () {
                    context.go(
                        "${AppRouteName.loginPage}/${AppRouteName.registerPage}");
                  },
                  borderRadius: BorderRadius.circular(8),
                  child: Text(
                    " Register",
                    style: AppTextStyle.loginAccountSmall2,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

