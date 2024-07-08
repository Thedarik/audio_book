import 'package:audio_book/src/core/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileSaveButton extends StatelessWidget {
  const ProfileSaveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        context.pop();
      },
      child: Text(
        "Save",
        style: AppTextStyle.settingProfileSaveMedium,
      ),
    );
  }
}
