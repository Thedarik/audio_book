
import 'package:audio_book/src/core/style/colors.dart';
import 'package:audio_book/src/core/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PlayerButtonMenuWidget extends StatelessWidget {
  const PlayerButtonMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      child: Center(
        child: SizedBox(
          height: 70.h,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      "assets/icons/bookmaker.svg",
                      width: 24.w,
                      height: 24.h,
                    ),
                  ),
                  Text(
                    "Bookmark",
                    style: AppTextStyle.detailSummarySmall?.copyWith(fontSize: 10, color: AppColors.c2E2E5D),
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      "assets/icons/chapter2.svg",
                      width: 24.w,
                      height: 24.h,
                    ),
                  ),
                  Text(
                    "Chapter 2",
                    style: AppTextStyle.detailSummarySmall?.copyWith(fontSize: 10, color: AppColors.c2E2E5D),
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      "assets/icons/speed10x.svg",
                      width: 24.w,
                      height: 24.h,
                    ),
                  ),
                  Text(
                    "Speed 10x",
                    style: AppTextStyle.detailSummarySmall?.copyWith(fontSize: 10, color: AppColors.c2E2E5D),
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      "assets/icons/download.svg",
                      width: 24.w,
                      height: 24.h,
                    ),
                  ),
                  Text(
                    "Download",
                    style: AppTextStyle.detailSummarySmall?.copyWith(fontSize: 10, color: AppColors.c2E2E5D),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
