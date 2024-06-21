import 'package:audio_book/src/core/widget/app_material_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends StatelessWidget {
  const App({super.key});
  static void run() => runApp(const ProviderScope(child: App()));
  @override
  Widget build(BuildContext context) =>  ScreenUtilInit(
    designSize: const Size(360, 800),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (_,child)=>const AppMaterialContext(),
  );
}
