import 'dart:developer';

import 'package:audio_book/src/core/api/api.dart';
import 'package:audio_book/src/core/routes/app_route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/storage/app_storage.dart';
import '../../../../core/style/colors.dart';
import '../../../../core/style/images.dart';
import '../../../../core/style/text_style.dart';
import '../widgets/login_text_field_widget.dart';
import '../widgets/useful_widgets_for_all_pages.dart';

class ConfirmationCodePage extends StatelessWidget {
  final String token = '';
  ConfirmationCodePage({super.key,required token});
  final TextEditingController controller1 = TextEditingController();
  final FocusNode _firstFocusNode = FocusNode();
  final bool isCheckFilled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            fixedSizedBox(height: 60.h),
            AppImages.authLogo,
            fixedSizedBox(height: 24.h),
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
                fixedSizedBox(height: 0,width: 48.w),
                Text("Enter the confirmation code we sent to",style: AppTextStyle.loginForgotPasswordOffSmall,),
                const Spacer(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                fixedSizedBox(height: 0,width: 48.w),
                Text("your@mail.com.",style: AppTextStyle.registerConfirmSubtitleSmall,),
              ],
            ),
            fixedSizedBox(height: 16.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                children: [
                  textFieldLogin(
                    maxLength: 6,
                    controller: controller1,
                    hintText: "Confirmation Code",
                    node: _firstFocusNode,
                    isError: false,
                    keyboardType: TextInputType.number,
                    context: context,
                  ),
                  fixedSizedBox(height: 16.h),
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
                  fixedSizedBox(height: 16.h),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 56,
                    onPressed: () async{
                      if(controller1.text.length == 6){
                        log(token);
                        log(controller1.text);
                        String? info = await AppStorage.load(key: StorageKey.token);
                        log(info??'null');
                        String? result = await Api.POST2FORCONFIRM(Api.apiPostSignUpVerify,controller1 != int ? 000000 : controller1 as int,{"TempAuthorization":info!});
                        if(result != null){
                          log("\n\n\n\n\nWORKED\n\n\n\n");
                          context.go(AppRouteName.welcomePage);
                        }
                      }else{
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Confirmation code\'s length is 6 digits')),
                        );
                      }
                    },
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    color: AppColors.c4838D1,
                    child: Text(
                      "Submit",
                      style: AppTextStyle.loginLoginButtonMedium,
                    ),
                  ),
                  fixedSizedBox(height: 16.h),
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
