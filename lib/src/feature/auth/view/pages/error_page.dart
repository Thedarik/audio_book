import 'package:audio_book/src/core/routes/app_route_name.dart';
import 'package:audio_book/src/core/style/colors.dart';
import 'package:audio_book/src/core/style/images.dart';
import 'package:audio_book/src/core/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 51,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 36,
                ),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new)),
                const SizedBox(
                  width: 86,
                ),
                Text(
                  "Error",
                  style: AppTextStyle.onBoardingTitleLarge,
                  textAlign: TextAlign.center,
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Color(0xffF3F1FE),
            ),
            const SizedBox(
              height: 32,
            ),
            AppImages.errorImage,
            const SizedBox(
              height: 32,
            ),
            Text("Ops! Something Went Wrong",style: AppTextStyle.onBoardingTitleLarge,),
            const SizedBox(
              height: 12,
            ),
            Text("Please check your internet connection\nand try again",style: AppTextStyle.onBoardingSubtitleMedium,textAlign: TextAlign.center,),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: MaterialButton(
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: const BorderSide(color: AppColors.c4838D1, width: 1.0),
                  ),
                  minWidth: double.infinity,
                  height: 56,
                  onPressed: (){
                    context.go(AppRouteName.loginPage);
                  },
                  child: Text("Retry",style: AppTextStyle.onBoardingButtonSkipMedium,),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
