import 'package:audio_book/src/core/style/colors.dart';
import 'package:audio_book/src/core/style/images.dart';
import 'package:audio_book/src/core/style/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class SubscriptionsPage extends StatelessWidget {
  const SubscriptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(Icons.arrow_drop_down),
          ),
        ),
        title: Text(
          "Subscriptions",
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 59.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: SizedBox(
                  height: 327.h,
                  child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: AppImages.subscribeBannerImage),
                ),
              ),
              SizedBox(
                height: 17.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: SizedBox(
                  height: 36.h,
                  width: double.infinity,
                  child: const Text(
                    "Take these all!",
                    style: TextStyle(
                      color: AppColors.c4838D1,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: SizedBox(
                  height: 24.h,
                  width: double.infinity,
                  child: const Text(
                    "What you get from subscription:",
                    style: TextStyle(
                      color: AppColors.c010104,
                      fontFamily: "Poppins",
                      // fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: SizedBox(
                  height: 52.h,
                  width: double.infinity,
                  child: Row(
                    children: [
                      SizedBox(
                        height: 32.h,
                        width: 32.h,
                        child: const Icon(
                          Icons.check,
                          color: AppColors.cF77A55,
                        ),
                      ),
                      SizedBox(
                        width: 16.h,
                      ),
                      SizedBox(
                        height: 52.h,
                        child: Text(
                          "Read and listen to all premium \nbooks without limits.",
                          style: AppTextStyle.subscriptionTakeSubtitleMedium?.copyWith(color: AppColors.c6A6A8B),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: SizedBox(
                  height: 52.h,
                  width: double.infinity,
                  child: Row(
                    children: [
                      SizedBox(
                        height: 32.h,
                        width: 32.h,
                        child: const Icon(
                          Icons.check,
                          color: AppColors.cF77A55,
                        ),
                      ),
                      SizedBox(
                        width: 16.h,
                      ),
                      SizedBox(
                        height: 52.h,
                        child: Text(
                          "Ad-free experience on any \nplatform.",
                          style: AppTextStyle.subscriptionTakeSubtitleMedium?.copyWith(color: AppColors.c6A6A8B),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: SizedBox(
                  height: 52.h,
                  width: double.infinity,
                  child: Row(
                    children: [
                      SizedBox(
                        height: 32.h,
                        width: 32.h,
                        child: const Icon(
                          Icons.check,
                          color: AppColors.cF77A55,
                        ),
                      ),
                      SizedBox(
                        width: 16.h,
                      ),
                      SizedBox(
                        height: 52.h,
                        child: Text(
                          "Exclusive content from \nhand-picked creators.",
                          style: AppTextStyle.subscriptionTakeSubtitleMedium?.copyWith(color: AppColors.c6A6A8B),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: SizedBox(
                  height: 52.h,
                  width: double.infinity,
                  child: Row(
                    children: [
                      SizedBox(
                        height: 32.h,
                        width: 32.h,
                        child: const Icon(
                          Icons.check,
                          color: AppColors.cF77A55,
                        ),
                      ),
                      SizedBox(
                        width: 16.h,
                      ),
                      SizedBox(
                        height: 52.h,
                        child: Text(
                          "Cancel anytime without \nanymore charged.",
                          style: AppTextStyle.subscriptionTakeSubtitleMedium?.copyWith(color: AppColors.c6A6A8B),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 44.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: SizedBox(
                  height: 126.h,
                  width: double.infinity,
                  child: AppImages.subscribeBannerImage,
                ),
              ),
              SizedBox(
                height: 44.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 80),
                child: Text(
                  "Access Anywhere",
                  style: AppTextStyle.subscriptionTakeTextLarge,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 69),
                child: Text(
                  "One account for any platform",
                  style: AppTextStyle.subscriptionTakeSubtitleMedium,
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: SizedBox(
                  height: 300.h,
                  width: double.infinity,
                  child: SvgPicture.asset("assets/icons/svg.svg"),
                ),
              ),
              SizedBox(
                height: 48.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: SizedBox(
                  child: Row(
                    children: [
                      Text(
                        "Subscribe Now",
                        style: AppTextStyle.subscriptionFenceTextMedium?.copyWith(fontSize: 24, color: AppColors.c010104),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  color: AppColors.c4838D1,
                  onPressed: () {},
                  child: SizedBox(
                    height: 56.h,
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        "SUBSCRIBE",
                        style: AppTextStyle.subscriptionBottomTextsLarge?.copyWith(color: AppColors.cFFFFFF),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 80.h,
              )
            ],
          ),
        ],
      ),
    );
  }
}
