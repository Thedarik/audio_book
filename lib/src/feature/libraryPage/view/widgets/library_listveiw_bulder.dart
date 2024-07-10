import 'package:audio_book/setup.dart';
import 'package:audio_book/src/core/style/text_style.dart';
import 'package:audio_book/src/data/repository/app_repository_impl.dart';
import 'package:audio_book/src/feature/libraryPage/controller/library_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class LibraryListviewBuilder extends StatelessWidget {
  final LibraryController controller;
  LibraryListviewBuilder({super.key}) : controller = LibraryController(AppRepositoryImpl());

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LibraryController>(
      create: (BuildContext context) {
        controller.getABook("savedBooks");
        return controller;
      },
      child: Consumer<LibraryController>(
        builder: (context, libraryController, child)=> Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: libraryController.storageModel.isEmpty ? Center(
              child: Text(
                "You have not searched something yet...",
                style: AppTextStyle.homeCategoriesMedium,
              ),
            ) : ListView.builder(
              itemCount: controller.storageModel.length,
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
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage("$address/api/file/image/${controller.storageModel[index]!.id}"),
                                      fit: BoxFit.cover
                                  ),
                              ),
                            ),
                          ),
                          SizedBox(width: 16.w),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '${index+1}. ${controller.storageModel[index]!.title}',
                                  style: AppTextStyle.homeBookNameMedium,
                                ),
                                Text(
                                  controller.storageModel[index]!.author,
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
        ),
      ),
    );
  }
}
