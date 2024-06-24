import 'package:audio_book/src/core/routes/app_route_name.dart';
import 'package:audio_book/src/core/style/colors.dart';
import 'package:audio_book/src/core/style/images.dart';
import 'package:audio_book/src/core/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                "assets/icons/main_logo.svg",
                width: 117.w,
                height: 29.h,
              ),
              SizedBox(width: 8.h),
              SvgPicture.asset(
                "assets/icons/audioBook.svg",
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: IconButton(
              onPressed: () {
                (context).go(AppRouteName.settingPage);
              },
              icon: AppImages.settingIcon,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 42.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "My Books",
                style: AppTextStyle.homeBookNameMedium?.copyWith(fontSize: 24, color: AppColors.c010104, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          SizedBox(height: 12.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: 53.h,
              width: double.infinity,
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: AppColors.cF5F5FA,
                    hintText: 'Search Books or Author...',
                    hintStyle: AppTextStyle.loginFieldSmall),
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
          SizedBox(height: 16.h),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: SizedBox(
                      height: 104.h,
                      width: 335.w, // Set width for each ListTile
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 80.w,
                              height: 80.h,
                              child: const DecoratedBox(
                                decoration: BoxDecoration(color: Colors.blue),
                              ),
                            ),
                            SizedBox(width: 16.w),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Asadbek Ibragimov $index',
                                    style: AppTextStyle.homeBookNameMedium,
                                  ),
                                  Text(
                                    'Subtitle $index',
                                    style: AppTextStyle.splashVersionLabelLarge,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
