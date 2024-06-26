import 'package:audio_book/src/core/routes/app_route_name.dart';
import 'package:audio_book/src/core/style/images.dart';
import 'package:audio_book/src/core/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Future<void> splashTimer()async{
    await Future.delayed(const Duration(seconds: 3));
    if(mounted){
      context.go(AppRouteName.onBoardingMain);
    }
  }

  @override
  void didChangeDependencies()async{
    await splashTimer();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            AppImages.mainLogoIcon,
            const SizedBox(height: 280,),
            Text("Version 1.0",style: AppTextStyle.splashVersionLabelLarge,),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}