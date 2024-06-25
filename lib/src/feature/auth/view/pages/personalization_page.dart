import 'package:audio_book/src/core/routes/app_route_name.dart';
import 'package:audio_book/src/feature/auth/view/widgets/login_text_field_widget.dart';
import 'package:audio_book/src/feature/auth/view/widgets/personalization_page_category_builder_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/style/colors.dart';
import '../../../../core/style/images.dart';
import '../../../../core/style/text_style.dart';
import '../widgets/useful_widgets_for_all_pages.dart';

class PersonalizationPage extends StatelessWidget {
  PersonalizationPage({super.key});

  TextEditingController controller = TextEditingController();
  FocusNode node = FocusNode();

  bool isCategoryChoosed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: AppImages.blueStrokeImage,
          ),
          Align(
            alignment: const Alignment(1, -0.7),
            child: AppImages.circleImage,
          ),
          Align(
            alignment: const Alignment(0, -0.1),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34.0),
              child: Column(
                children: [
                  fixedSizedBox(height: 204),
                  Row(
                    children: [
                      Text(
                        "Personalize Suggestion",
                        style: AppTextStyle.loginTitleMedium2,
                      ),
                      const Spacer(),
                    ],
                  ),
                  fixedSizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Choose ",
                        style: AppTextStyle.personalizationSubtitleSmall,
                      ),
                      Text(
                        "min. 3 topic ",
                        style: AppTextStyle.personalizationEndTwoTitleMedium,
                      ),
                      Text(
                        "you like, we will give",
                        style: AppTextStyle.personalizationSubtitleSmall,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "you more often that relate to it.",
                        style: AppTextStyle.personalizationSubtitleSmall,
                      ),
                    ],
                  ),
                  fixedSizedBox(height: 40),
                  textFieldLogin(
                    hintText: "Search Categories",
                    context: context,
                    controller: controller,
                    node: node,
                    isError: false,
                    keyboardType: TextInputType.text,
                  ),
                  fixedSizedBox(height: 16),
                  /// categories
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          categoryBuilder(category: "Art",),
                          fixedSizedBox(height: 0,width: 8),
                          categoryBuilder(category: "Business"),
                          fixedSizedBox(height: 0,width: 8),
                          categoryBuilder(category: "Biography")
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          categoryBuilder(category: "Comedy",),
                          fixedSizedBox(height: 0,width: 8),
                          categoryBuilder(category: "Culture"),
                          fixedSizedBox(height: 0,width: 8),
                          categoryBuilder(category: "Education")
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          categoryBuilder(category: "News",),
                          fixedSizedBox(height: 0,width: 8),
                          categoryBuilder(category: "Philosophy"),
                          fixedSizedBox(height: 0,width: 8),
                          categoryBuilder(category: "Psychology"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          categoryBuilder(category: "Technology",),
                          fixedSizedBox(height: 0,width: 8),
                          categoryBuilder(category: "Travel"),
                        ],
                      ),
                    ],
                  ),
                  fixedSizedBox(height: 62),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 56,
                    onPressed: () {
                      context.go("${AppRouteName.welcomePage}/${AppRouteName.personalizationPage}/${AppRouteName.personalizationPageTwo}");
                    },
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none
                    ),
                    color: isCategoryChoosed ? AppColors.c4838D1 : const Color(0xffDAD7F6),
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
                      "Skip",
                      style: AppTextStyle.registerCancelButtonMedium,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
