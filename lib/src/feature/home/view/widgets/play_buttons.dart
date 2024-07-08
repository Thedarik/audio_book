import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

import '../../../../core/routes/app_route_name.dart';
import '../../../../core/style/colors.dart';
import '../../../../core/style/images.dart';
import '../../../../core/style/text_style.dart';

class PlayButtons extends StatelessWidget {
  final String path;
  final VoidCallback? onTap;
  const PlayButtons({super.key, required this.path, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 27.w),
      child: Row(
        children: [
          MaterialButton(
            onPressed: () {
              context.go("${AppRouteName.mainPage}${AppRouteName.homePage.substring(1)}/${AppRouteName.homeDetailPage}/${AppRouteName.bookPage}/${AppRouteName.audioPage}");
            },
            height: 55.h,
            minWidth: 150.w,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            color: AppColors.c4838D1,
            child: Row(
              children: [
                AppImages.miniPlayIcon,
                SizedBox(width: 5.w),
                Text(
                  "Play Audio",
                  style: AppTextStyle.homeSeeMoreSmall?.copyWith(
                      color: AppColors.white
                  ),
                )
              ],
            ),
          ),
          SizedBox(width: 15.w),
          MaterialButton(
            onPressed: onTap,
            height: 55.h,
            minWidth: 150.w,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: const BorderSide(
                    color: AppColors.c4838D1,
                    width: 2
                )
            ),
            color: AppColors.white,
            child: Row(
              children: [
                AppImages.miniLibraryIcon,
                SizedBox(width: 5.w),
                Text(
                  "Read Book",
                  style: AppTextStyle.homeSeeMoreSmall?.copyWith(
                      color: AppColors.c4838D1
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

class PdfViewerPage extends StatelessWidget {
  const PdfViewerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final path = GoRouterState.of(context).extra as String;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
        ),
        title: const Text('PDF Viewer'),
        centerTitle: true,
      ),
      body: PDFView(
        filePath: path,
      ),
    );
  }
}
