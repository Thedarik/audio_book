import 'package:audio_book/src/core/routes/app_route_name.dart';
import 'package:audio_book/src/core/style/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class SettignViewProfileButton extends StatelessWidget {
  const SettignViewProfileButton({super.key});

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
