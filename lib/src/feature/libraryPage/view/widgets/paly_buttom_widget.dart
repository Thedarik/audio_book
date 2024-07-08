import 'package:audio_book/src/core/style/images.dart';
import 'package:audio_book/src/feature/libraryPage/controller/durationController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class PalyButtomWidget extends StatelessWidget {
  DurationSlider provider;
  PalyButtomWidget({super.key, required this.provider});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      child: SizedBox(
        height: 72.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: () {}, icon: AppImages.volumeUpIcon),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: AppImages.leftCircleIcon,
                  iconSize: 48,
                  onPressed: () {
                    provider.seekToSecond(provider.position.inSeconds - 10);
                  },
                ),
                IconButton(
                  icon: Icon(provider.isPlaying ? Icons.pause : Icons.play_arrow),
                  iconSize: 64,
                  onPressed: provider.playPause,
                ),
                IconButton(
                  icon: AppImages.rightCircleIcon,
                  iconSize: 48,
                  onPressed: () {
                    provider.seekToSecond(provider.position.inSeconds + 10);
                  },
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: AppImages.uploadIcon,
            ),
          ],
        ),
      ),
    );
  }
}
