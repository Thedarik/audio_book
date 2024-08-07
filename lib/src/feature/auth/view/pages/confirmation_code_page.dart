import 'dart:developer';

import 'package:audio_book/src/core/api/api.dart';
import 'package:audio_book/src/core/routes/app_route_name.dart';
import 'package:audio_book/src/feature/auth/model/login_receive_model.dart';
import 'package:audio_book/src/feature/auth/view/widgets/confirmation_code_widgets.dart';
import 'package:audio_book/src/feature/auth/view/widgets/resend_code_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../core/storage/app_storage.dart';
import '../../../../core/style/colors.dart';
import '../../../../core/style/images.dart';
import '../../../../core/style/text_style.dart';
import '../widgets/login_text_field_widget.dart';
import '../widgets/useful_widgets_for_all_pages.dart';

class ConfirmationCodePage extends StatelessWidget {
  final String token = '';

  ConfirmationCodePage({super.key, required token});

  final TextEditingController controller1 = TextEditingController();
  final FocusNode _firstFocusNode = FocusNode();
  final bool isCheckFilled = false;

  @override
  Widget build(BuildContext context) {
    final timerProvider = Provider.of<TimerProvider>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            fixedSizedBox(height: 60.h),
            AppImages.authLogo,
            fixedSizedBox(height: 24.h),
            ConfirmationCodeWidgets.confirmationTexts(),
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
                  ConfirmationCodeWidgets.confirmationResendCode(timerProvider),
                  fixedSizedBox(height: 16.h),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 56,
                    onPressed: () async {
                      if (controller1.text.length == 6) {
                        log(controller1.text);

                        /// loading date from shared prefs
                        String? info = await AppStorage.load(
                          key: StorageKey.token,
                        );

                        /// result
                        String? result = await Api.verifyCode(
                          api: Api.apiPostSignUpVerify,
                          verificationCode: controller1.text,
                          tempAuthorizationToken: info!,
                        );
                        log(result.toString());
                        if (result != null) {
                          LoginReceiveModel tokens =
                              loginReceiveModelFromJson(result);
                          await AppStorage.store(
                              key: StorageKey.token,
                              value: tokens.accessToken!);
                          await AppStorage.store(
                              key: StorageKey.refreshToken,
                              value: tokens.refreshToken!);
                          log("\n\n\n\n\nWORKED\n\n\n\n");
                          context.go(AppRouteName.welcomePage);
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                'Password is not right',
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          );
                        }
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content:
                                Text('Confirmation code\'s length is 6 digits'),
                          ),
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
                  ConfirmationCodeWidgets.confirmationCancelButton(context),
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
