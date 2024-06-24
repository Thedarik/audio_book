import 'package:audio_book/src/core/style/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset("assets/icons/small_logo.svg"),
      ),
    );
  }
}
