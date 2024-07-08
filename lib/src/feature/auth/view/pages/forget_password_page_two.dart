import 'package:audio_book/src/core/localization/tr_language.dart';
import 'package:audio_book/src/core/routes/app_route_name.dart';
import 'package:audio_book/src/feature/auth/view/widgets/forget_password_widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/style/colors.dart';
import '../../../../core/style/images.dart';
import '../../../../core/style/text_style.dart';
import '../widgets/useful_widgets_for_all_pages.dart';

class ForgetPasswordPageTwo extends StatelessWidget {
  ForgetPasswordPageTwo({super.key});

  final TextEditingController controller1 = TextEditingController();
  final FocusNode firstFocusNode = FocusNode();
  final bool isCheckFilled = false;

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
              ForgetPasswordWidgets.forgetPassTexts2(),
              fixedSizedBox(height: 24),
              ForgetPasswordWidgets.forgetPasswordCloseButton(context),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
