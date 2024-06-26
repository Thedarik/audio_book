import 'package:audio_book/src/core/style/colors.dart';
import 'package:audio_book/src/core/style/text_style.dart';
import 'package:audio_book/src/feature/libraryPage/view/widgets/library_listveiw_bulder.dart';
import 'package:audio_book/src/feature/libraryPage/view/widgets/library_search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 42.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "My Books",
                style: AppTextStyle.homeBookNameMedium?.copyWith(fontSize: 24, color: AppColors.c010104, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          SizedBox(height: 12.h),
          const LibrarySearchWidget(),
          SizedBox(height: 16.h),
          const LibraryListviewBuilder(),
        ],
      ),
    );
  }
}
