

import 'package:audio_book/src/core/widget/app_material_context.dart';
import 'package:audio_book/src/data/repository/app_repository_impl.dart';
import 'package:audio_book/src/feature/auth/controller/category_state_notifier_controller.dart';
import 'package:audio_book/src/feature/auth/controller/catergory_take_controller.dart';
import 'package:audio_book/src/feature/auth/controller/check_box_controller.dart';
import 'package:audio_book/src/feature/auth/view/widgets/resend_code_widget.dart';
import 'package:audio_book/src/feature/home/controller/home_controller.dart';
import 'package:audio_book/src/feature/search/controller/search_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  static void run() => runApp(const App());

  @override
  Widget build(BuildContext context) => MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => CategoryStateNotifier(),
      ),
      ChangeNotifierProvider(
        create: (context) => TakeCategoryProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => TimerProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => CheckboxStateNotifier(),
      ),
      ChangeNotifierProvider(
        create: (context) => HomeController(AppRepositoryImpl()),
      ),
      ChangeNotifierProvider(
        create: (context) => SearchBookController(AppRepositoryImpl()),
      ),
    ],
    child: ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, __) => AppMaterialContext(),
    )
  );
}
