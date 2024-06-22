import 'package:audio_book/src/core/style/images.dart';
import 'package:audio_book/src/feature/home/view/widgets/logo_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                SizedBox(
                  height: 40,
                  width: 40,
                  child: AppImages.mainLogoIcon,
                ),
                const SizedBox(
                  width: 5,
                ),
                const LogoText(),
                const Spacer(),
                GestureDetector(
                  child: AppImages.settingIcon,
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [

                      ],
                    )

                  ],
                ),
              )
            ],
          ),
      ),
    );
  }
}
