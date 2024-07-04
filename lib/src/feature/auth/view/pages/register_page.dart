import 'dart:developer';

import 'package:audio_book/src/core/api/api.dart';
import 'package:audio_book/src/core/routes/app_route_name.dart';
import 'package:audio_book/src/core/storage/app_storage.dart';
import 'package:audio_book/src/feature/auth/model/register_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/style/colors.dart';
import '../../../../core/style/images.dart';
import '../../../../core/style/text_style.dart';
import '../widgets/date_text_formatter_widget.dart';
import '../widgets/login_text_field_widget.dart';
import '../widgets/useful_widgets_for_all_pages.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();
  final TextEditingController controller3 = TextEditingController();

  final FocusNode _firstFocusNode = FocusNode();
  final FocusNode _secondFocusNode = FocusNode();
  final FocusNode _thirdFocusNode = FocusNode();

  final bool isCheckFilled = false;

  final _formKey = GlobalKey<FormState>();

  /// validators
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

  String? _validateBirthDate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your birth date';
    }
    final RegExp dateRegex = RegExp(r'^\d{4}-\d{2}-\d{2}$');
    if (!dateRegex.hasMatch(value)) {
      return 'Birth date (YYYY-MM-DD)';
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
            fixedSizedBox(height: 60),
            AppImages.authLogo,
            fixedSizedBox(height: 24),
            Row(
              children: [
                fixedSizedBox(height: 0, width: 41),
                Text(
                  "Register",
                  style: AppTextStyle.loginTitleMedium,
                ),
                const Spacer(),
              ],
            ),
            fixedSizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    textFieldLogin(
                      validator: _validateEmail,
                      controller: controller1,
                      hintText: "Email",
                      node: _firstFocusNode,
                      isError: false,
                      keyboardType: TextInputType.emailAddress,
                      context: context,
                      nextNode: _secondFocusNode,
                    ),
                    fixedSizedBox(height: 16),
                    textFieldLogin(
                        validator: _validatePassword,
                        controller: controller2,
                        hintText: "Password",
                        node: _secondFocusNode,
                        isError: false,
                        keyboardType: TextInputType.visiblePassword,
                        context: context,
                        nextNode: _thirdFocusNode),
                    fixedSizedBox(height: 16),
                    textFieldLogin(
                      validator: _validateBirthDate,
                      controller: controller3,
                      hintText: "Date of Birth",
                      node: _thirdFocusNode,
                      isError: false,
                      keyboardType: const TextInputType.numberWithOptions(),
                      context: context,
                      formatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(8),
                        DateTextFormatter(),
                      ],
                    ),
                    fixedSizedBox(height: 16),
                    Column(
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
                    ),
                    fixedSizedBox(height: 16),
                    MaterialButton(
                      minWidth: double.infinity,
                      height: 56,
                      onPressed: () async {
                        if (_formKey.currentState?.validate() == true) {
                          // log('TRUE');
                          RegisterModel model = RegisterModel(
                              birthDate: controller3.text,
                              email: controller1.text,
                              password: controller2.text,
                              verificationCode: "String");
                          String? result = await Api.POST(
                            Api.apiPostSignUp,
                            model.toJson(),
                          );
                          if (result != null) {
                            await AppStorage.store(key: StorageKey.token, value: result);
                            context.go("${AppRouteName.loginPage}/${AppRouteName.registerPage}/${AppRouteName.confirmationPage}",extra: "info");
                            // log('\n\n\n\n RESULT: $result');
                          }
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('WROONNGG')),
                          );
                        }
                      },
                      elevation: 0,
                      shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                      color: AppColors.c4838D1,
                      child: Text(
                        "Register",
                        style: AppTextStyle.loginLoginButtonMedium,
                      ),
                    ),
                    fixedSizedBox(height: 16),
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
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
