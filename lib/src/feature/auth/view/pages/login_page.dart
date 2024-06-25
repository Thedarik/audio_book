import 'package:audio_book/src/core/routes/app_route_name.dart';
import 'package:audio_book/src/core/style/colors.dart';
import 'package:audio_book/src/core/style/images.dart';
import 'package:audio_book/src/core/style/text_style.dart';
import 'package:audio_book/src/feature/auth/view/widgets/login_text_field_widget.dart';
import 'package:audio_book/src/feature/auth/view/widgets/useful_widgets_for_all_pages.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  final FocusNode _firstFocusNode = FocusNode();
  final FocusNode _secondFocusNode = FocusNode();

  bool isCheckFilled = false;

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
                  "Login to Your Account",
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
                  ),
                  fixedSizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: isCheckFilled
                            ? const Icon(
                                Icons.check_box,
                                color: AppColors.cF5F5FA,
                              )
                            : const Icon(
                                Icons.check_box_outline_blank,
                                color: AppColors.cBBB1FA,
                              ),
                      ),
                      fixedSizedBox(
                        height: 0,
                        width: 12,
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
                    height: 56,
                    onPressed: () {
                      context.go(AppRouteName.welcomePage);
                    },
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    color: AppColors.c4838D1,
                    child: Text(
                      "Login",
                      style: AppTextStyle.loginLoginButtonMedium,
                    ),
                  ),
                  fixedSizedBox(height: 32),
                  Row(
                    children: [
                      const Spacer(),
                      InkWell(
                        splashColor: AppColors.cF5F5FA,
                        borderRadius: BorderRadius.circular(8),
                        onTap: () {

                        },
                        child: Text(
                          "Forget Password ?",
                          style: AppTextStyle.loginForgotPasswordSmall,
                        ),
                      ),
                    ],
                  ),
                  fixedSizedBox(height: 32),
                  Text(
                    "Or login with",
                    style: AppTextStyle.loginOrLoginWithSmall,
                  ),
                  fixedSizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MaterialButton(
                        onPressed: (){},
                        minWidth: 87,
                        height: 56,
                        shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(width: 1,color: AppColors.c4838D1)
                        ),
                        child: AppImages.googleIcon,
                      ),
                      MaterialButton(
                        onPressed: (){},
                        minWidth: 87,
                        height: 56,
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(width: 1,color: AppColors.c4838D1)
                        ),
                        child: AppImages.facebookIcon,
                      ),
                      MaterialButton(
                        onPressed: (){},
                        minWidth: 87,
                        height: 56,
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(width: 1,color: AppColors.c4838D1)
                        ),
                        child: AppImages.twitterIcon,
                      ),
                    ],
                  ),
                  fixedSizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don’t have an accoun’t ? ",
                        style: AppTextStyle.loginAccountSmall,

                      ),
                      InkWell(
                        onTap: (){
                          context.go("${AppRouteName.loginPage}/${AppRouteName.registerPage}");
                        },
                        borderRadius: BorderRadius.circular(8),
                        child: Text(
                          "Register",
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
