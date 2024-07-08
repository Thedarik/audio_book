import 'package:audio_book/src/core/routes/app_route_name.dart';
import 'package:audio_book/src/core/style/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class SettingViewProfileButton extends StatelessWidget {
  const SettingViewProfileButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go("${AppRouteName.homePage}/${AppRouteName.settingPage}/${AppRouteName.profilePage}");
      },
      child: Text(
        "View profile",
        style: AppTextStyle.settingProfileViewSmall,
      ),
    );
  }
}
