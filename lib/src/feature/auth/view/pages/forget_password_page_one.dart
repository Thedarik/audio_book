import 'package:flutter/material.dart';

import '../../../../core/style/colors.dart';
import '../../../../core/style/images.dart';
import '../../../../core/style/text_style.dart';
import '../widgets/login_text_field_widget.dart';
import '../widgets/useful_widgets_for_all_pages.dart';

class ForgetPasswordPageOne extends StatelessWidget {
  ForgetPasswordPageOne({super.key});
  TextEditingController controller1 = TextEditingController();
  FocusNode _firstFocusNode = FocusNode();
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
                  "Forget Password",
                  style: AppTextStyle.loginTitleMedium,
                ),
                const Spacer(),
              ],
            ),
            fixedSizedBox(height: 16),
            fixedSizedBox(height: 0,width: 48),
            Text("Please fill email or phone number and \nwe'll send you a link to get back into your\naccount.",style: AppTextStyle.loginForgotPasswordSmall,),
            fixedSizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                children: [
                  textFieldLogin(
                    controller: controller1,
                    hintText: "Email / Phone Number",
                    node: _firstFocusNode,
                    isError: false,
                    keyboardType: TextInputType.emailAddress,
                    context: context,
                  ),
                  fixedSizedBox(height: 16),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 56,
                    onPressed: () {},
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
