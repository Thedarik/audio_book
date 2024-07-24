import 'dart:developer';

import 'package:audio_book/src/core/api/api.dart';
import 'package:audio_book/src/core/storage/app_storage.dart';
import 'package:audio_book/src/core/style/colors.dart';
import 'package:audio_book/src/core/style/images.dart';
import 'package:audio_book/src/core/style/text_style.dart';
import 'package:audio_book/src/feature/libraryPage/view/widgets/profile_save_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  Future<void> fetchUserInfo()async{
    String? token = await AppStorage.load(key: StorageKey.token);
    String? info = await Api.getUserInfo(api: Api.apiUserMe, token: token!);
    try{
      if(info != null){
        log("\n\nUSER INFO: $info");
      }else{
        log("\n\nNO USER DATE");
      }
    }catch(e){
      log("\n\nERROR ON PROFILE: $e");
    }

  }
  @override
  void initState() {
    fetchUserInfo();
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Profile",
          style: AppTextStyle.homeBookNameMedium,
        ),
        actions: const [
          ProfileSaveButton(),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            child: Divider(
              indent: 1,
              color: AppColors.cF5F5FA,
            ),
          ),
          SizedBox(height: 44.h),
          Center(
            child: Stack(
              children: [
                SizedBox(
                  height: 160.h,
                  width: 160.w,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(image: AssetImage(
                            "assets/images/photo_2023-07-05_07-52-14.jpg"))),
                  ),
                ),
                SizedBox(height: 20.h,
                    width: 20.w,
                    child: MaterialButton(
                        onPressed: () {}, child: AppImages.uploadIcon)),
              ],
            ),
          ),
          SizedBox(height: 40.h),
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
                  SizedBox(
                    width: 120.w,
                    child: Text(
                      "Display Name",
                      style: AppTextStyle.settingProfileNameMedium,
                    ),
                  ),
                  SizedBox(width: 28.w),
                  SizedBox(
                    width: 140.w,
                    child: Text(
                      "John Doe",
                      style: AppTextStyle.settingProfileTextsSmall,
                    ),
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
                  SizedBox(
                    width: 120.w,
                    child: Text(
                      "Username",
                      style: AppTextStyle.settingProfileNameMedium,
                    ),
                  ),
                  SizedBox(width: 28.w),
                  SizedBox(
                    width: 140.w,
                    child: Text(
                      "johndoe",
                      style: AppTextStyle.settingProfileTextsSmall,
                    ),
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
                  SizedBox(
                    width: 120.w,
                    child: Text(
                      "Email",
                      style: AppTextStyle.settingProfileNameMedium,
                    ),
                  ),
                  SizedBox(width: 28.w),
                  SizedBox(
                    width: 140.w,
                    child: Text(
                      "john@mail.com",
                      style: AppTextStyle.settingProfileTextsSmall,
                    ),
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
                  SizedBox(
                    width: 120.w,
                    child: Text(
                      "Phone",
                      style: AppTextStyle.settingProfileNameMedium,
                    ),
                  ),
                  SizedBox(width: 28.w),
                  SizedBox(
                    width: 140.w,
                    child: Text(
                      "+1234567890",
                      style: AppTextStyle.settingProfileTextsSmall,
                    ),
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
                  SizedBox(
                    width: 120.w,
                    child: Text(
                      "Date Birth",
                      style: AppTextStyle.settingProfileNameMedium,
                    ),
                  ),
                  SizedBox(width: 28.w),
                  SizedBox(
                    width: 140.w,
                    child: Text(
                      "01 January 2001",
                      style: AppTextStyle.settingProfileTextsSmall,
                    ),
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
        ],
      ),
    );
  }
}
