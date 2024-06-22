import 'package:flutter/material.dart';

import '../../../../core/style/colors.dart';

class LogoText extends StatelessWidget {
  const LogoText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        children: [
          TextSpan(
            text: 'Audi',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: AppColors.c4838D1,
            ),
          ),
          TextSpan(
            text: 'Books',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w300,
                color: AppColors.c4838D1),
          ),
          TextSpan(
            text: '.',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: AppColors.cF77A55),
          ),
        ],
      ),
    );
  }
}
