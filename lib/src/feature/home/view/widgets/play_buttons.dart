import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routes/app_route_name.dart';
import '../../../../core/style/colors.dart';
import '../../../../core/style/images.dart';
import '../../../../core/style/text_style.dart';

class PlayButtons extends StatelessWidget {
  const PlayButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      child: Row(
        children: [
          MaterialButton(
            onPressed: (){
              context.go("${AppRouteName.mainPage}${AppRouteName.homePage.substring(1)}/${AppRouteName.homeDetailPage}/${AppRouteName.bookPage}/${AppRouteName.audioPage}");
            },
            height: 55,
            minWidth: 150,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            color: AppColors.c0057FF,
            child: Row(
              children: [
                AppImages.miniPlayIcon,

                const SizedBox(width: 5),

                Text(
                  "Play Audio",
                  style: AppTextStyle.homeSeeMoreSmall?.copyWith(
                      color: AppColors.white
                  ),
                )
              ],
            ),
          ),

          const SizedBox(width: 25),

          MaterialButton(
            onPressed: (){},
            height: 55,
            minWidth: 150,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: const BorderSide(
                    color: AppColors.c0057FF,
                    width: 2
                )
            ),
            color: AppColors.white,
            child: Row(
              children: [
                AppImages.miniLibraryIcon,

                const SizedBox(width: 5),

                Text(
                  "Read Book",
                  style: AppTextStyle.homeSeeMoreSmall?.copyWith(
                      color: AppColors.c0057FF
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
