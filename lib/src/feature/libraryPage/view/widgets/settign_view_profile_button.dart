import 'package:audio_book/src/core/style/text_style.dart';
import 'package:flutter/cupertino.dart';

class SettingViewProfileButton extends StatelessWidget {
  const SettingViewProfileButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Text(
        "View profile",
        style: AppTextStyle.settingProfileViewSmall,
      ),
    );
  }
}
