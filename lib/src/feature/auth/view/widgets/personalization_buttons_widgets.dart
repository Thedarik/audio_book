import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../core/api/api.dart';
import '../../../../core/routes/app_route_name.dart';
import '../../../../core/storage/app_storage.dart';
import '../../../../core/style/colors.dart';
import '../../../../core/style/text_style.dart';
import '../../controller/category_state_notifier_controller.dart';
@immutable
class PersonalizationButtonsWidgets {
  static personalizationButtonOne({required List<String> listOfCategory}) {
    return Consumer<CategoryStateNotifier>(
      builder: (context, value, _) {
        return MaterialButton(
          minWidth: double.infinity,
          height: 56,
          onPressed: () async {
            if (value.topicsSelected >= 3) {
              log("LIST OF cATEGORIES: $listOfCategory");
              String? token =
              await AppStorage.load(key: StorageKey.token);

              String? result = await Api.postCategoryCustomize(
                Api.apiCategoryCustomize,
                {"categoryIds": listOfCategory},
                token!,
              );
              log('\n\nRESULT OF POST $result\n\n');
              if (result != null) {
                context.go(
                  "${AppRouteName.welcomePage}/${AppRouteName
                      .personalizationPage}/${AppRouteName
                      .personalizationPageTwo}",
                );
              }
            }
          },
          elevation: 0,
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          color: value.topicsSelected >= 3
              ? AppColors.c4838D1
              : const Color(0xffDAD7F6),
          child: Text(
            "Submit",
            style: AppTextStyle.loginLoginButtonMedium,
          ),
        );
      },
    );
  }

  static personalizationButtonTwo(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        context.go(AppRouteName.homePage);
      },
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
    );
  }
}