import 'package:audio_book/src/core/style/colors.dart';
import 'package:audio_book/src/core/style/text_style.dart';
import 'package:flutter/material.dart';

Widget textFieldLogin(
    {required String hintText,
      required BuildContext context,
      FocusNode? nextNode,
      required TextEditingController controller,
    required FocusNode node,
    required bool isError,
    required TextInputType keyboardType}) {
  return TextFormField(
    controller: controller,
    focusNode: node,
    keyboardType: keyboardType,
    cursorColor: AppColors.black,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none
      ),
      filled: true,
      fillColor: AppColors.cF5F5FA,
      hintText: hintText,
      label: Text(hintText),
      labelStyle: const TextStyle(
        color: AppColors.cB8B8C7,
      ),
      hintStyle: isError ? TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: FontSize.size14,
        fontFamily: 'Rubik',
        color: AppColors.red,
      ) : AppTextStyle.loginFieldSmall,
    ),
    onFieldSubmitted: (value) {
      FocusScope.of(context).requestFocus(nextNode);
    },
  );
}
