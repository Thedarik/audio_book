import 'package:audio_book/src/core/style/colors.dart';
import 'package:audio_book/src/core/style/text_style.dart';
import 'package:audio_book/src/feature/libraryPage/view/widgets/settign_view_profile_button.dart';
import 'package:audio_book/src/feature/libraryPage/view/widgets/setting_logout_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Settings",
          style: AppTextStyle.homeBookNameMedium,
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            child: Divider(
              indent: 1,
              color: AppColors.cF5F5FA,
            ),
          ),
          SizedBox(height: 12.h),
          SizedBox(
            height: 104.h,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 32),
              child: Row(
                children: [
                  const CircleAvatar(radius: 40, backgroundImage: AssetImage("assets/images/image.png")),
                  SizedBox(
                    width: 24.w,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 28),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "John Doe",
                          style: AppTextStyle.settingProfileNameMedium,
                        ),
                        const SettignViewProfileButton()
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
              height: 28.h,
              width: double.infinity,
              child: const DecoratedBox(
                decoration: BoxDecoration(color: AppColors.cF5F5FA),
              )),
          SizedBox(
            width: double.infinity,
            height: 53.h,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Notifications",
                    style: AppTextStyle.settingProfileTextsSmall,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            child: Divider(
              indent: 1,
              color: AppColors.cF5F5FA,
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 53.h,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Data and Storages",
                    style: AppTextStyle.settingProfileTextsSmall,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
              height: 28.h,
              width: double.infinity,
              child: const DecoratedBox(
                decoration: BoxDecoration(color: AppColors.cF5F5FA),
              )),
          SizedBox(
            width: double.infinity,
            height: 53.h,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Subscription",
                    style: AppTextStyle.settingProfileTextsSmall,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            child: Divider(
              indent: 1,
              color: AppColors.cF5F5FA,
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 53.h,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Linked Account",
                    style: AppTextStyle.settingProfileTextsSmall,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
              height: 28.h,
              width: double.infinity,
              child: const DecoratedBox(
                decoration: BoxDecoration(color: AppColors.cF5F5FA),
              )),
          SizedBox(
            width: double.infinity,
            height: 53.h,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "About Audibooks",
                    style: AppTextStyle.settingProfileTextsSmall,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            child: Divider(
              indent: 1,
              color: AppColors.cF5F5FA,
            ),
          ),
          SizedBox(
            height: 28.h,
          ),
          const Padding(padding: EdgeInsets.symmetric(horizontal: 28), child: SettingLogoutButton())
        ],
      ),
    );
  }
}
