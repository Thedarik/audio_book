import 'package:audio_book/src/core/routes/app_route_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/style/colors.dart';
import '../../../../core/style/images.dart';
import '../../../../core/style/text_style.dart';
import '../widgets/login_text_field_widget.dart';
import '../widgets/useful_widgets_for_all_pages.dart';

class ForgetPasswordPageTwo extends StatelessWidget {
  ForgetPasswordPageTwo({super.key});
  TextEditingController controller1 = TextEditingController();
  FocusNode _firstFocusNode = FocusNode();
  bool isCheckFilled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              fixedSizedBox(height: 60),
              AppImages.authLogo,
              fixedSizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Email Sent",
                    style: AppTextStyle.loginTitleMedium,
                  ),
                  const Spacer(),
                ],
              ),
              fixedSizedBox(height: 16),
              fixedSizedBox(height: 0,width: 48),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("We sent an email to ",style: AppTextStyle.loginForgotPasswordSmall,),
                  Text("y***@mail.com",style: AppTextStyle.registerTermsSmall,)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("with a link to get back into your account.",style: AppTextStyle.loginForgotPasswordSmall,),
                ],
              ),
              fixedSizedBox(height: 16),
              textFieldLogin(
                controller: controller1,
                hintText: "Email / Phone Number",
                node: _firstFocusNode,
                isError: false,
                keyboardType: TextInputType.emailAddress,
                context: context,
              ),
              fixedSizedBox(height: 24),
              MaterialButton(
                onPressed: () {
                  context.go(AppRouteName.loginPage);
                },
                minWidth: double.infinity,
                height: 56,
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                        width: 1, color: AppColors.c4838D1)),
                child: Text(
                  "Close" ,
                  style: AppTextStyle.registerCancelButtonMedium,
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
