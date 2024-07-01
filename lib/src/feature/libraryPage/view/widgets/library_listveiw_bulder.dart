import 'package:audio_book/src/core/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LibraryListviewBuilder extends StatelessWidget {
  const LibraryListviewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> assets = [
      "assets/images/the_black_witch.png",
      "assets/images/the_prisoners_key.png",
      "assets/images/the_kidnappers.png",
      "assets/images/the_fire_queen.png",
      "assets/images/light_mage.png"
    ];

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView.builder(
          itemCount: assets.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: SizedBox(
                height: 104.h,
                width: 335.w,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 80.w,
                        height: 80.h,
                        child: DecoratedBox(
                          decoration: BoxDecoration(image: DecorationImage(image: AssetImage(assets[index]), fit: BoxFit.cover)),
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
    );
  }
}
