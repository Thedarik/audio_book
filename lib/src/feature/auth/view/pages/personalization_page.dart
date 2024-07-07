import 'dart:developer';

import 'package:audio_book/setup.dart';
import 'package:audio_book/src/core/api/api.dart';
import 'package:audio_book/src/core/routes/app_route_name.dart';
import 'package:audio_book/src/core/storage/app_storage.dart';
import 'package:audio_book/src/feature/auth/controller/category_state_notifier_controller.dart';
import 'package:audio_book/src/feature/auth/controller/catergory_take_controller.dart';
import 'package:audio_book/src/feature/auth/view/widgets/login_text_field_widget.dart';
import 'package:audio_book/src/feature/auth/view/widgets/personalization_buttons_widgets.dart';
import 'package:audio_book/src/feature/auth/view/widgets/personalization_categories_widgets.dart';
import 'package:audio_book/src/feature/auth/view/widgets/personalization_page_category_builder_widget.dart';
import 'package:audio_book/src/feature/auth/view/widgets/personatization_text_widgets.dart';
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
              padding: const EdgeInsets.symmetric(horizontal: 33.0),
              child: Column(
                children: [
                  fixedSizedBox(height: 204.h),
                  // Title
                  PersonalizationTextWidgets.personalizationTitle(),
                  fixedSizedBox(height: 12.h),
                  // Subtitle
                  PersonalizationTextWidgets.personalizationSubtitle(),
                  PersonalizationTextWidgets.personalizationSubtitle2(),
                  fixedSizedBox(height: 40.h),
                  // field
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
                  PersonalizationCategoriesWidgets.personalizationCategories(
                    listOfCategory: listOfCategory,
                  ),
                  PersonalizationButtonsWidgets.personalizationButtonOne(
                    listOfCategory: listOfCategory,
                  ),
                  fixedSizedBox(height: 16.h),
                  PersonalizationButtonsWidgets.personalizationButtonTwo(context),
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

/// PLEASE NOT DELETE IT !!!
//Expanded(
//                                     child: GridView.custom(
//                                       gridDelegate:
//                                           const SliverGridDelegateWithFixedCrossAxisCount(
//                                         crossAxisCount: 3,
//                                         mainAxisSpacing: 10.0,
//                                         crossAxisSpacing: 10.0,
//                                         childAspectRatio: 2,
//                                       ),
//                                       childrenDelegate:
//                                           SliverChildBuilderDelegate(
//                                               (context, index) {
//                                         // log(provider.data![index]!.name!);
//                                         return categoryBuilder(
//                                             category:
//                                                 provider.data?[index]?.name ??
//                                                     "",
//                                             onPress: () {
//                                               listOfCategory.add(
//                                                   provider.data?[index]?.id ??
//                                                       '');
//                                               log(provider.data![index]!.id!);
//                                               log(listOfCategory.toString());
//                                             });
//                                       }, childCount: provider.data!.length),
//                                     ),
//                                   );
