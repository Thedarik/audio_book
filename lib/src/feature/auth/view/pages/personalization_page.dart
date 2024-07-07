import 'dart:developer';

import 'package:audio_book/setup.dart';
import 'package:audio_book/src/core/api/api.dart';
import 'package:audio_book/src/core/routes/app_route_name.dart';
import 'package:audio_book/src/core/storage/app_storage.dart';
import 'package:audio_book/src/feature/auth/controller/category_state_notifier_controller.dart';
import 'package:audio_book/src/feature/auth/controller/catergory_take_controller.dart';
import 'package:audio_book/src/feature/auth/view/widgets/login_text_field_widget.dart';
import 'package:audio_book/src/feature/auth/view/widgets/personalization_page_category_builder_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../core/style/colors.dart';
import '../../../../core/style/images.dart';
import '../../../../core/style/text_style.dart';
import '../widgets/useful_widgets_for_all_pages.dart';

class PersonalizationPage extends StatefulWidget {
  PersonalizationPage({super.key});

  @override
  State<PersonalizationPage> createState() => _PersonalizationPageState();
}

class _PersonalizationPageState extends State<PersonalizationPage> {
  final TextEditingController controller = TextEditingController();

  final FocusNode node = FocusNode();

  final bool isCategoryChoosed = false;

  final int topicsSelected = 0;

  List<String> listOfCategory = [];

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<TakeCategoryProvider>(context, listen: false).fetchData();
    });
    super.initState();
  }

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: AppImages.blueStrokeImage,
          ),
          Align(
            alignment: const Alignment(1, -0.7),
            child: AppImages.circleImage,
          ),
          Align(
            alignment: const Alignment(0, -0.1),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34.0),
              child: Column(
                children: [
                  fixedSizedBox(height: 204.h),
                  Row(
                    children: [
                      Text(
                        "Personalize Suggestion",
                        style: AppTextStyle.loginTitleMedium2,
                      ),
                      const Spacer(),
                    ],
                  ),
                  fixedSizedBox(height: 12.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Choose ",
                        style: AppTextStyle.personalizationSubtitleSmall,
                      ),
                      Text(
                        "min. 3 topic ",
                        style: AppTextStyle.personalizationEndTwoTitleMedium,
                      ),
                      Text(
                        "you like, we will give",
                        style: AppTextStyle.personalizationSubtitleSmall,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "you more often that relate to it.",
                        style: AppTextStyle.personalizationSubtitleSmall,
                      ),
                    ],
                  ),
                  fixedSizedBox(height: 40.h),
                  textFieldLogin(
                    hintText: "Search Categories",
                    context: context,
                    controller: controller,
                    node: node,
                    isError: false,
                    keyboardType: TextInputType.text,
                  ),
                  fixedSizedBox(height: 16.h),

                  /// categories
                  Consumer<CategoryStateNotifier>(
                    builder: (context, value, child) {
                      return Expanded(
                        flex: 3,
                        child: Column(
                          children: [
                            Consumer<TakeCategoryProvider>(
                              builder: (context, provider, _) {
                                if (provider.isLoading) {
                                  return const CircularProgressIndicator();
                                } else if (provider.data != null &&
                                    provider.data!.isNotEmpty) {
                                  return Expanded(
                                    child: GridView.custom(
                                      gridDelegate:
                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 3,
                                        mainAxisSpacing: 10.0,
                                        crossAxisSpacing: 10.0,
                                        childAspectRatio: 2,
                                      ),
                                      childrenDelegate:
                                          SliverChildBuilderDelegate(
                                              (context, index) {
                                        // log(provider.data![index]!.name!);
                                        return categoryBuilder(
                                            category:
                                                provider.data?[index]?.name ??
                                                    "",
                                            onPress: () {
                                              listOfCategory.add(
                                                  provider.data?[index]?.id ??
                                                      '');
                                              log(provider.data![index]!.id!);
                                              log(listOfCategory.toString());
                                            });
                                      }, childCount: provider.data!.length),
                                    ),
                                  );
                                } else {
                                  return const Text('No data available');
                                }
                              },
                            ),
                            value.topicsSelected >= 3
                                ? Column(
                                    children: [
                                      fixedSizedBox(height: 12.h),
                                      Row(
                                        children: [
                                          Text(
                                            "${value.topicsSelected} topics Selected",
                                            style: AppTextStyle
                                                .personalizationEndSubtitleSmall,
                                          ),
                                          const Spacer(),
                                        ],
                                      ),
                                    ],
                                  )
                                : fixedSizedBox(height: 0),
                            fixedSizedBox(
                                height:
                                    value.topicsSelected >= 3 ? 39.h : 62.h),
                          ],
                        ),
                      );
                    },
                  ),
                  Consumer<CategoryStateNotifier>(builder: (context, value, _) {
                    return MaterialButton(
                      minWidth: double.infinity,
                      height: 56,
                      onPressed: () async {
                        if (value.topicsSelected >= 3) {
                          log("LIST OF cATEGORIES: $listOfCategory");
                          String? token = await AppStorage.load(key: StorageKey.token);

                          String? result = await Api.postCategoryCustomize(
                            Api.apiCategoryCustomize,
                            {"categoryIds": listOfCategory},
                            token!,
                          );
                          log('\n\nRESULT OF POST $result\n\n');
                          if (result != null) {
                            context.go(
                              "${AppRouteName.welcomePage}/${AppRouteName.personalizationPage}/${AppRouteName.personalizationPageTwo}",
                            );
                          }
                        }
                      },
                      elevation: 0,
                      shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                      color: value.topicsSelected >= 3
                          ? AppColors.c4838D1
                          : const Color(0xffDAD7F6),
                      child: Text(
                        "Submit",
                        style: AppTextStyle.loginLoginButtonMedium,
                      ),
                    );
                  }),
                  fixedSizedBox(height: 16.h),
                  MaterialButton(
                    onPressed: () {},
                    minWidth: double.infinity,
                    height: 56,
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            width: 1, color: AppColors.c4838D1)),
                    child: Text(
                      "Skip",
                      style: AppTextStyle.registerCancelButtonMedium,
                    ),
                  ),
                  // fixedSizedBox(height: 81.h),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//                              Column(
//                                 children: [
//                                   Row(
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     children: [
//                                       categoryBuilder(
//                                         category: "Art",
//                                       ),
//                                       fixedSizedBox(height: 0, width: 8.w),
//                                       categoryBuilder(
//                                         category: "Business",
//                                       ),
//                                       fixedSizedBox(height: 0, width: 8.w),
//                                       categoryBuilder(
//                                         category: "Biography",
//                                       )
//                                     ],
//                                   ),
//                                   Row(
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     children: [
//                                       categoryBuilder(
//                                         category: "Comedy",
//                                       ),
//                                       fixedSizedBox(height: 0, width: 8.w),
//                                       categoryBuilder(
//                                         category: "Culture",
//                                       ),
//                                       fixedSizedBox(height: 0, width: 8.w),
//                                       categoryBuilder(
//                                         category: "Education",
//                                       )
//                                     ],
//                                   ),
//                                   Row(
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     children: [
//                                       categoryBuilder(
//                                         category: "News",
//                                       ),
//                                       fixedSizedBox(height: 0, width: 8.w),
//                                       categoryBuilder(
//                                         category: "Philosophy",
//                                       ),
//                                       fixedSizedBox(height: 0, width: 8.w),
//                                       categoryBuilder(
//                                         category: "Psychology",
//                                       ),
//                                     ],
//                                   ),
//                                   Row(
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     children: [
//                                       categoryBuilder(
//                                         category: "Technology",
//                                       ),
//                                       fixedSizedBox(height: 0, width: 8.w),
//                                       categoryBuilder(
//                                         category: "Travel",
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               )
