import 'package:audio_book/setup.dart';
import 'package:audio_book/src/core/localization/test_provider.dart';
import 'package:audio_book/src/core/localization/tr_language.dart';
import 'package:audio_book/src/core/routes/app_route_name.dart';
import 'package:audio_book/src/core/style/colors.dart';
import 'package:audio_book/src/core/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TestProvider(service.read("til")),
      child: Consumer<TestProvider>(
        builder: (context, provider, child) {
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: 80.h),
                  Text(
                    "Select a language".tr,
                    style: TextStyle(fontSize: 45),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: Colors.white,
                          onPressed: () {
                            provider.dropCall("1");
                          },
                          child: SizedBox(
                            height: 50.h,
                            child: Center(
                              child: Text(
                                "🇺🇿 O'zbek",
                                style: TextStyle(fontSize: 30),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 40.h),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: Colors.white,
                          onPressed: () {
                            provider.dropCall("2");
                          },
                          child: SizedBox(
                            height: 50.h,
                            child: Center(
                              child: Text(
                                "🇬🇧 England",
                                style: TextStyle(fontSize: 30),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: Colors.white,
                          onPressed: () {
                            provider.dropCall("3");
                          },
                          child: SizedBox(
                            height: 50.h,
                            child: Center(
                              child: Text(
                                "🇷🇺 Russ",
                                style: TextStyle(fontSize: 30),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      color: AppColors.c4838D1,
                      onPressed: () {
                        context.go(AppRouteName.onBoardingMain);
                      },
                      child: SizedBox(
                        height: 56.h,
                        width: double.infinity,
                        child: Center(
                          child: Text(
                            "Next",
                            style: AppTextStyle.subscriptionBottomTextsLarge?.copyWith(color: AppColors.cFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
