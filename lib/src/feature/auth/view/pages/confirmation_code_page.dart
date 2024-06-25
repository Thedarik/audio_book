import 'package:audio_book/src/core/routes/app_route_name.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/style/colors.dart';
import '../../../../core/style/images.dart';
import '../../../../core/style/text_style.dart';
import '../widgets/login_text_field_widget.dart';
import '../widgets/useful_widgets_for_all_pages.dart';

class ConfirmationCodePage extends StatelessWidget {
  ConfirmationCodePage({super.key});
  TextEditingController controller1 = TextEditingController();
  final FocusNode _firstFocusNode = FocusNode();
  bool isCheckFilled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            fixedSizedBox(height: 60),
            AppImages.authLogo,
            fixedSizedBox(height: 24),
            Row(
              children: [
                fixedSizedBox(height: 0, width: 48),
                Text(
                  "Confirmation Code",
                  style: AppTextStyle.loginTitleMedium,
                ),
                const Spacer(),
              ],
            ),
            fixedSizedBox(height: 16),
            Row(
              children: [
                fixedSizedBox(height: 0,width: 48),
                Text("Enter the confirmation code we sent to",style: AppTextStyle.loginForgotPasswordSmall,),
                const Spacer(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                fixedSizedBox(height: 0,width: 48),
                Text("your@mail.com.",style: AppTextStyle.registerConfirmSubtitleSmall,),
              ],
            ),
            fixedSizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                children: [
                  textFieldLogin(
                    controller: controller1,
                    hintText: "Confirmation Code",
                    node: _firstFocusNode,
                    isError: false,
                    keyboardType: TextInputType.number,
                    context: context,
                  ),
                  fixedSizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      fixedSizedBox(height: 0,width: 10),
                      Text("Didn’t receive the code? ",style: AppTextStyle.registerReceiveSmall,),
                      InkWell(
                        splashColor: AppColors.cF5F5FA,
                        borderRadius: BorderRadius.circular(8),
                        onTap: () {},
                        child: Text(
                          "Resend",
                          style: AppTextStyle.registerTermsOrangeSmall,
                        ),
                      ),
                    ],
                  ),
                  fixedSizedBox(height: 16),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 56,
                    onPressed: () {
                      context.go(AppRouteName.loginPage);
                    },
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    color: AppColors.c4838D1,
                    child: Text(
                      "Submit",
                      style: AppTextStyle.loginLoginButtonMedium,
                    ),
                  ),
                  fixedSizedBox(height: 16),
                  MaterialButton(
                    onPressed: () {},
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
