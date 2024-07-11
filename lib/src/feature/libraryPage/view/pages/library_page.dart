import 'package:audio_book/src/core/style/colors.dart';
import 'package:audio_book/src/core/style/text_style.dart';
import 'package:audio_book/src/data/repository/app_repository_impl.dart';
import 'package:audio_book/src/feature/libraryPage/controller/library_controller.dart';
import 'package:audio_book/src/feature/libraryPage/view/widgets/library_listveiw_bulder.dart';
import 'package:audio_book/src/feature/libraryPage/view/widgets/library_search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../core/routes/app_route_name.dart';
import '../../../../core/style/images.dart';
import '../../../home/view/widgets/logo_text.dart';

class LibraryPage extends StatelessWidget {
  final TextEditingController textEditingController = TextEditingController();
  final LibraryController controller;

  LibraryPage({super.key}) : controller = LibraryController(AppRepositoryImpl());

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LibraryController>(
      create: (context) => controller..getABook("savedBooks"),
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                SizedBox(
                  height: 40,
                  width: 40,
                  child: AppImages.mainLogoIcon,
                ),
                const SizedBox(
                  width: 5,
                ),
                const LogoText(),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    context.go(
                        "${AppRouteName.mainPage}${AppRouteName.homePage.substring(1)}/${AppRouteName.settingPage}");
                  },
                  child: AppImages.settingIcon,
                ),
              ],
            ),
          ),
        ),
        body: Consumer<LibraryController>(
          builder: (context, controller, child) => Column(
            children: [
              SizedBox(height: 42.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "My Books",
                    style: AppTextStyle.homeBookNameMedium?.copyWith(
                      fontSize: 24,
                      color: AppColors.c010104,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12.h),
              LibrarySearchWidget(
                textEditingController: textEditingController,
                onChanged: (text) {
                  controller.turnOn();
                  controller.searchBook(text);
                },
                onTap: () {
                  controller.turnOFF();
                },
              ),
              SizedBox(height: 16.h),
              Expanded(
                child: controller.isKeyboardActive
                    ? SearchedListviewBuilder(list: controller.searchList)
                    : LibraryListviewBuilder(controller: controller,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
