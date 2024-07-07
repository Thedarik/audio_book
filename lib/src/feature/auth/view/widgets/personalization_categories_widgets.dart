import 'package:audio_book/src/feature/auth/view/widgets/personalization_page_category_builder_widget.dart';
import 'package:audio_book/src/feature/auth/view/widgets/useful_widgets_for_all_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../core/style/text_style.dart';
import '../../controller/category_state_notifier_controller.dart';
import '../../controller/catergory_take_controller.dart';

class PersonalizationCategoriesWidgets {

  static personalizationCategories({required List<String> listOfCategory}) {
    return Consumer<CategoryStateNotifier>(
      builder: (context, value, child) {
        return Expanded(
          flex: 3,
          child: Column(
            children: [
              Consumer<TakeCategoryProvider>(
                builder: (context, provider, _) {
                  var providerOff = provider.data;
                  if (provider.isLoading) {
                    return const CircularProgressIndicator();
                  } else if (provider.data != null &&
                      provider.data!.isNotEmpty) {
                    return Expanded(
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  categoryBuilder(
                                    category: providerOff![0]!.name!,
                                    onPress: () {
                                      listOfCategory.add(
                                          providerOff[0]?.id ?? '');
                                    },
                                  ),
                                  fixedSizedBox(height: 0, width: 8.w),
                                  categoryBuilder(
                                    category: providerOff[1]!.name!,
                                    onPress: () {
                                      listOfCategory.add(
                                          providerOff[1]?.id ?? '');
                                    },
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  categoryBuilder(
                                    category: providerOff[2]!.name!,
                                    onPress: () {
                                      listOfCategory.add(
                                          providerOff[2]?.id ?? '');
                                    },
                                  ),
                                  fixedSizedBox(height: 0, width: 8.w),
                                  categoryBuilder(
                                    category: providerOff[3]!.name!,
                                    onPress: () {
                                      listOfCategory.add(
                                          providerOff[3]?.id ?? '');
                                    },
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  categoryBuilder(
                                    category: providerOff[4]!.name!,
                                    onPress: () {
                                      listOfCategory.add(
                                          providerOff[4]?.id ?? '');
                                    },
                                  ),
                                  fixedSizedBox(height: 0, width: 8.w),
                                  categoryBuilder(
                                    category: providerOff[5]!.name!,
                                    onPress: () {
                                      listOfCategory.add(
                                          providerOff[5]?.id ?? '');
                                    },
                                  ),
                                  fixedSizedBox(height: 0, width: 8.w),
                                  categoryBuilder(
                                    category: providerOff[8]!.name!,
                                    onPress: () {
                                      listOfCategory.add(
                                          providerOff[8]?.id ?? '');
                                    },
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  categoryBuilder(
                                    category: providerOff[6]!.name!,
                                    onPress: () {
                                      listOfCategory.add(
                                          providerOff[6]?.id ?? '');
                                    },
                                  ),
                                  fixedSizedBox(height: 0, width: 8.w),
                                  categoryBuilder(
                                    category: providerOff[7]!.name!,
                                    onPress: () {
                                      listOfCategory.add(
                                          providerOff[7]?.id ?? '');
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
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
    );
  }
}