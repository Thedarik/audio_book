import 'package:audio_book/src/core/style/text_style.dart';
import 'package:audio_book/src/feature/libraryPage/view/widgets/paly_buttom_widget.dart';
import 'package:audio_book/src/feature/libraryPage/view/widgets/player_buttomMenu_widget.dart';
import 'package:audio_book/src/feature/libraryPage/view/widgets/player_custom_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class AudioPage extends StatelessWidget {
  const AudioPage({super.key});

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
            icon: Icon(Icons.arrow_downward_outlined),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Harry Potter and the Sorc",
          style: AppTextStyle.detailAudioTitleMedium,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36),
            child: IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz)),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 28.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: SizedBox(
              height: 320.h,
              width: double.infinity,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  image: const DecorationImage(image: AssetImage("assets/images/harry_potter.png")),
                  borderRadius: BorderRadius.circular(16),
                  //   boxShadow: const [
                  //     BoxShadow(
                  //       color: Colors.black,
                  //       spreadRadius: 1,
                  //       blurRadius: 25,
                  //       offset: Offset(0, 10), // horizontal offset is 0, vertical offset is 3
                  //     ),
                  //   ],
                ),
              ),
            ),
          ),
          SizedBox(height: 28.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 38),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Harry Potter and the Prison...",
                  style: AppTextStyle.playerBookNameLarge,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 38),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "J.K. Rowling",
                  style: AppTextStyle.detailAudioSubtitleMedium,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 32.h,
          ),
          SizedBox(
            height: 50.h,
            width: double.infinity,
            child: CustomSlider(),
          ),
          const PalyButtomWidget(),
          SizedBox(
            height: 28.h,
          ),
          const PlayerButtonMenuWidget()
        ],
      ),
    );
  }
}
