import 'dart:developer';

import 'package:audio_book/src/core/api/api.dart';
import 'package:audio_book/src/core/routes/app_route_name.dart';
import 'package:audio_book/src/core/style/colors.dart';
import 'package:audio_book/src/core/style/images.dart';
import 'package:audio_book/src/core/style/text_style.dart';
import 'package:audio_book/src/feature/auth/view/widgets/login_text_field_widget.dart';
import 'package:audio_book/src/feature/auth/view/widgets/useful_widgets_for_all_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../controller/check_box_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();

  final FocusNode _firstFocusNode = FocusNode();
  final FocusNode _secondFocusNode = FocusNode();

  final bool isCheckFilled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            fixedSizedBox(height: 60.h),
            AppImages.authLogo,
            fixedSizedBox(height: 24.h),
            Row(
              children: [
                fixedSizedBox(height: 0, width: 41.w),
                Text(
                  "Login to Your Account",
                  style: AppTextStyle.loginTitleMedium,
                ),
                const Spacer(),
              ],
            ),
            fixedSizedBox(height: 16.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                children: [
                  textFieldLogin(
                    controller: controller1,
                    hintText: "Email",
                    node: _firstFocusNode,
                    isError: false,
                    keyboardType: TextInputType.emailAddress,
                    context: context,
                    nextNode: _secondFocusNode,
                  ),
                  fixedSizedBox(height: 16.h),
                  textFieldLogin(
                    controller: controller2,
                    hintText: "Password",
                    node: _secondFocusNode,
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
                            side: const BorderSide(width: 1,color: AppColors.cBBB1FA),
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
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 56.h,
                    onPressed: () async{
                      String? result = await Api.POST(Api.apiPostLogin,{"email": controller1.text, "password":controller2.text});
                      if(result != null){
                        context.go(AppRouteName.welcomePage);
                      }else{

                      }
                    },
                    elevation: 0,
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none
                    ),
                    color: AppColors.c4838D1,
                    child: Text(
                      "Login",
                      style: AppTextStyle.loginLoginButtonMedium,
                    ),
                  ),
                  fixedSizedBox(height: 32.h),
                  Row(
                    children: [
                      const Spacer(),
                      InkWell(
                        splashColor: AppColors.cF5F5FA,
                        borderRadius: BorderRadius.circular(8),
                        onTap: () {
                          context.go("${AppRouteName.loginPage}/${AppRouteName.forgetPasswordOne}");
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
                            borderSide: const BorderSide(
                                width: 1, color: AppColors.c4838D1)),
                        child: AppImages.googleIcon,
                      ),
                      MaterialButton(
                        onPressed: () {},
                        minWidth: 87.w,
                        height: 56.h,
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                                width: 1, color: AppColors.c4838D1)),
                        child: AppImages.facebookIcon,
                      ),
                      MaterialButton(
                        onPressed: () {},
                        minWidth: 87.w,
                        height: 56.h,
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                                width: 1, color: AppColors.c4838D1)),
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
          ],
        ),
      ),
    );
  }
}
