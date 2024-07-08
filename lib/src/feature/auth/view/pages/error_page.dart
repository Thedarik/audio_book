
import 'package:audio_book/src/feature/auth/view/widgets/error_page_widgets.dart';
import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ErrorPageWidgets.main(context),
      ),
    );
  }
}
