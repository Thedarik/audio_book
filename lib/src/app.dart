import 'package:audio_book/src/core/widget/app_material_context.dart';
import 'package:audio_book/src/feature/home/controller/home_controller.dart';
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
        create: (context)=> HomeController(),
      )
    ],
    child: ScreenUtilInit(
          designSize: const Size(360, 800),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (_, child) =>  AppMaterialContext(),
        ),
  );
}
