import 'dart:developer';

import 'package:audio_book/src/core/api/api.dart';
import 'package:audio_book/src/core/routes/app_route_name.dart';
import 'package:audio_book/src/core/storage/app_storage.dart';
import 'package:audio_book/src/core/style/colors.dart';
import 'package:audio_book/src/core/style/images.dart';
import 'package:audio_book/src/core/style/text_style.dart';
import 'package:audio_book/src/feature/auth/model/login_receive_model.dart';
import 'package:audio_book/src/feature/auth/view/widgets/login_widgets.dart';
import 'package:audio_book/src/feature/auth/view/widgets/useful_widgets_for_all_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();

  final FocusNode _firstFocusNode = FocusNode();
  final FocusNode _secondFocusNode = FocusNode();

  final bool isCheckFilled = false;

  final _formKey = GlobalKey<FormState>();

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an email';
    }
    final RegExp emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (!emailRegex.hasMatch(value)) {
      return 'example: email@gmail.com';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a password';
    }
    if (value.length < 8) {
      return 'Password must be at least 8 characters long';
    }
    return null;
  }

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
            LoginWidgets.loginBottomPart(
              context: context,
              formKey: _formKey,
              validateEmail: _validateEmail,
              validatePassword: _validatePassword,
              controller1: controller1,
              controller2: controller2,
              firstFocusNode: _firstFocusNode,
              secondFocusNode: _secondFocusNode,
              button: MaterialButton(
                minWidth: double.infinity,
                height: 56.h,
                onPressed: () async {
                  if (_formKey.currentState?.validate() == true) {
                    String? result = await Api.POST(Api.apiPostLogin, {
                      "email": controller1.text,
                      "password": controller2.text
                    });
                    if (result != null) {
                      // log("\n\n RESULT OF LOGIN: $result\n\n");
                      LoginReceiveModel model =
                          loginReceiveModelFromJson(result);
                      // log(model.refreshToken??'NO TOKEN');
                      await AppStorage.store(
                          key: StorageKey.token, value: model.accessToken!);
                      await AppStorage.store(
                          key: StorageKey.refreshToken,
                          value: model.refreshToken!);
                      log("access token: ${model.accessToken}");
                      log("refresh token: ${model.refreshToken}");
                      // var check = await AppStorage.load(key: StorageKey.refreshToken);
                      // log("SHOWING TEST REFRESH TOKEN: ${check!}");
                      context.go(AppRouteName.homePage);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Email or password is wrong!'),
                        ),
                      );

                      // log('SOMETHING WENT WRONG IN LOGIN ');
                    }
                  }
                },
                elevation: 0,
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none),
                color: AppColors.c4838D1,
                child: Text(
                  "Login",
                  style: AppTextStyle.loginLoginButtonMedium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
