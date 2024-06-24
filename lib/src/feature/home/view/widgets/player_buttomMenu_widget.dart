import 'package:audio_book/src/core/style/images.dart';
import 'package:audio_book/src/core/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlayerButtommenuWidget extends StatefulWidget {
  const PlayerButtommenuWidget({super.key});

  @override
  State<PlayerButtommenuWidget> createState() => _PlayerButtommenuWidgetState();
}

class _PlayerButtommenuWidgetState extends State<PlayerButtommenuWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      child: Center(
        child: SizedBox(
          height: 70.h,
          width: double.infinity,
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: AppImages.inActiveLibraryIcon,
                  ),
                  Text(
                    "Bookmark",
                    style: AppTextStyle.bottomBarTextSmall,
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: AppImages.inActiveLibraryIcon,
                  ),
                  Text(
                    "Bookmark",
                    style: AppTextStyle.bottomBarTextSmall,
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: AppImages.inActiveLibraryIcon,
                  ),
                  Text(
                    "Bookmark",
                    style: AppTextStyle.bottomBarTextSmall,
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: AppImages.inActiveLibraryIcon,
                  ),
                  Text(
                    "Bookmark",
                    style: AppTextStyle.bottomBarTextSmall,
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
