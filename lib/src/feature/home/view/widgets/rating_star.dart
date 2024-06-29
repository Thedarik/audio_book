import 'package:audio_book/src/core/style/colors.dart';
import 'package:audio_book/src/core/style/text_style.dart';
import 'package:audio_book/src/feature/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class RatingStar1 extends StatelessWidget {
  double? size;
  RatingStar1({super.key, this.size});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeController>(
      builder: (context, controller, child) => Row(children: [
        PannableRatingBar(
          rate: controller.rating,
          onChanged: controller.onTap,
          items: List.generate(5, (index) {
            bool isActive = index < controller.rating.ceil();
            return RatingWidget(
              selectedColor: AppColors.cF77A55,
              child: isActive
                  ? SvgPicture.asset(
                      'assets/icons/filled_star_icon.svg',
                      height: size?.h ?? 16,
                      width: size?.w ?? 16,
                      fit: BoxFit.cover,
                    )
                  : SvgPicture.asset(
                      'assets/icons/outlined_star_icon.svg',
                      height: size?.h ?? 16,
                      width: size?.w ?? 16,
                      fit: BoxFit.cover,
                    ),
            );
          }),
        ),

        SizedBox(width: 12.w,),

        Text(
          controller.rating.toString(),
          style: AppTextStyle.homeCategoryTextMedium?.copyWith(
            fontWeight: FontWeight.w400,
            color: AppColors.c9292A2,
            fontSize: 20
          ),
        ),
      ],),
    );
  }
}

class RatingStar extends StatelessWidget {
  double? size;
  RatingStar({super.key, this.size});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeController>(
      builder: (context, controller, child) => PannableRatingBar(
        rate: controller.rating,
        onChanged: controller.onTap,
        items: List.generate(5, (index) {
          bool isActive = index < controller.rating.ceil();
          return RatingWidget(
            selectedColor: AppColors.cF77A55,
            child: isActive
                ? SvgPicture.asset(
                    'assets/icons/filled_star_icon.svg',
                    height: size?.h ?? 16,
                    width: size?.w ?? 16,
                    fit: BoxFit.cover,
                  )
                : SvgPicture.asset(
                    'assets/icons/outlined_star_icon.svg',
                    height: size?.h ?? 16,
                    width: size?.w ?? 16,
                    fit: BoxFit.cover,
                  ),
          );
        }),
      ),
    );
  }
}
