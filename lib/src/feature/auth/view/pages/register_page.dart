import 'package:audio_book/src/core/routes/app_route_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/style/colors.dart';
import '../../../../core/style/images.dart';
import '../../../../core/style/text_style.dart';
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
                  fixedSizedBox(height: 16),
                  textFieldLogin(
                    controller: controller2,
                    hintText: "Password",
                    node: _secondFocusNode,
                    isError: false,
                    keyboardType: TextInputType.visiblePassword,
                    context: context,
                    nextNode: _thirdFocusNode
                  ),
                  fixedSizedBox(height: 16),
                  textFieldLogin(
                    controller: controller3,
                    hintText: "Date of Birth",
                    node: _thirdFocusNode,
                    isError: false,
                    keyboardType: const TextInputType.numberWithOptions(),
                    context: context,
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
                              "Data Policy " ,
                              style: AppTextStyle.loginForgotPasswordSmall,
                            ),
                          ),
                          Text("and ",style: AppTextStyle.registerTerms2Small,),
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
                    onPressed: () {
                      context.go("${AppRouteName.loginPage}/${AppRouteName.registerPage}/${AppRouteName.confirmationPage}");
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
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
