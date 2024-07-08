import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../../setup.dart';
import '../../../../core/routes/app_route_name.dart';
import '../../../../core/style/colors.dart';
import '../../../../core/style/text_style.dart';
import '../../../../data/repository/app_repository_impl.dart';
import '../../controller/home_controller.dart';
import '../../model/home_book_model.dart';
import '../widgets/author_texts.dart';
import '../widgets/categories.dart';
import '../widgets/play_buttons.dart';
import '../widgets/rating_star.dart';
import '../widgets/review_details.dart';
import '../widgets/summary_text.dart';

class BookDetailPage extends StatelessWidget {
  final HomeController controller;
  List<BestSeller> listBook = [];

  BookDetailPage({super.key}) : controller = HomeController(AppRepositoryImpl());

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeController>(
      create: (_) {
        final extra = GoRouterState.of(context).extra;
        listBook = extra as List<BestSeller>;

        if (listBook.isNotEmpty) {
          controller.getASingleBook(listBook[0].id!);
        }

        return controller;
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {
                  log("Length: ${listBook.length}");
                  context.pop(listBook);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 22.sp,
                  color: AppColors.c2E2E5D,
                ),
              ),
              Consumer<HomeController>(
                builder: (context, controller, child) {
                  return Text(
                    controller.singleBookModel?.book.title ?? 'Loading...',
                    style: AppTextStyle.homeCategoriesMedium?.copyWith(fontWeight: FontWeight.w500),
                  );
                },
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_horiz,
                  size: 22.sp,
                  color: AppColors.c2E2E5D,
                ),
              ),
            ],
          ),
        ),
        body: Consumer<HomeController>(
          builder: (context, controller, child) {
            if (controller.isLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (controller.singleBookModel == null) {
              return const Center(child: Text('No book data available.'));
            } else {
              final book = controller.singleBookModel!.book;
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Center(
                      child: Column(
                        children: [
                          SizedBox(height: 25.h),
                          SizedBox(
                            height: 260.h,
                            width: 260.w,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("$address/api/file/image/${book.id}"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 25.h),
                          AuthorTexts(author: book.author, title: book.title),
                          SizedBox(height: 20.h),
                          Padding(
                            padding: EdgeInsets.only(left: 38.w),
                            child: RatingStar1(size: 24),
                          ),
                          SizedBox(height: 12.h),
                          Categories(
                            category1: book.categoryNames.isNotEmpty ? book.categoryNames[0] : 'N/A',
                            category2: book.categoryNames.length > 1 ? book.categoryNames[1] : 'N/A',
                          ),
                          SizedBox(height: 30.h),
                          PlayButtons(
                            path: controller.file?.path ?? "",
                            onTap: () async {
                              await controller.fetchPDF(controller.singleBookModel!.book.id);
                              context.go(
                                "${AppRouteName.mainPage}${AppRouteName.homePage.substring(1)}/${AppRouteName.homeDetailPage}/${AppRouteName.bookPage}/${AppRouteName.pdfPage}",
                                extra: controller.file?.path,
                              );
                            },
                          ),
                          SizedBox(height: 30.h),
                          Padding(
                            padding: EdgeInsets.only(right: 245.w),
                            child: Text(
                              "Summary",
                              style: AppTextStyle.homeSeeMoreSmall?.copyWith(color: AppColors.c2E2E5D),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          SummaryText(text: book.description),
                          SizedBox(height: 40.h),
                          Padding(
                            padding: EdgeInsets.only(right: 256.w),
                            child: Text(
                              "Review",
                              style: AppTextStyle.homeSeeMoreSmall?.copyWith(color: AppColors.c2E2E5D),
                            ),
                          ),
                          SizedBox(height: 20.h),
                          ReviewDetails(),
                          SizedBox(height: 30.h),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
