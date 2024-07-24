import 'package:audio_book/setup.dart';
import 'package:audio_book/src/core/style/text_style.dart';
import 'package:audio_book/src/feature/libraryPage/controller/library_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../core/routes/app_route_name.dart';
import '../../../search/model/storage_model.dart';

class SearchedListviewBuilder extends StatelessWidget {
  final List<StorageModel?> list;
  const SearchedListviewBuilder({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: GestureDetector(
                onTap: (){
                  context.go(
                      "${AppRouteName.mainPage}${AppRouteName.libraryPage.substring(1)}/${AppRouteName.libraryBookPage}",
                      extra: [list[index]]
                  );
                },
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
                                  image: NetworkImage("$address/api/file/image/${list[index]!.id}"),
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
                                '${index+1}. ${list[index]!.title}',
                                style: AppTextStyle.homeBookNameMedium,
                              ),
                              Text(
                                list[index]!.author,
                                style: AppTextStyle.splashVersionLabelLarge,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
    );
  }
}

class LibraryListviewBuilder extends StatelessWidget {
  final LibraryController controller;

  LibraryListviewBuilder({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Consumer<LibraryController>(
      builder: (context, libraryController, child) => Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: libraryController.storageModel.isEmpty
              ? Center(
            child: Text(
              "You have not searched something yet...",
              style: AppTextStyle.homeCategoriesMedium,
            ),
          )
              : ListView.builder(
            itemCount: libraryController.storageModel.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: GestureDetector(
                  onTap: () {
                    context.go(
                        "${AppRouteName.mainPage}${AppRouteName.libraryPage.substring(1)}/${AppRouteName.libraryBookPage}",
                        extra: [libraryController.storageModel[index]]);
                  },
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
                                    image: NetworkImage("$address/api/file/image/${libraryController.storageModel[index]!.id}"),
                                    fit: BoxFit.cover),
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
                                  '${index + 1}. ${libraryController.storageModel[index]!.title}',
                                  style: AppTextStyle.homeBookNameMedium,
                                ),
                                Text(
                                  libraryController.storageModel[index]!.author,
                                  style: AppTextStyle.splashVersionLabelLarge,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
