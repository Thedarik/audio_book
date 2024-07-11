import 'package:audio_book/src/core/style/colors.dart';
import 'package:audio_book/src/core/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LibrarySearchWidget extends StatelessWidget {
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final TextEditingController textEditingController;

  const LibrarySearchWidget({
    super.key,
    this.onChanged,
    required this.textEditingController, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 53.h,
        width: double.infinity,
        child: TextField(
          controller: textEditingController,
          onChanged: onChanged,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: AppColors.cF5F5FA,
            hintText: 'Search Books or Author...',
            hintStyle: AppTextStyle.loginFieldSmall,
            suffixIcon: textEditingController.text.isNotEmpty
                ? IconButton(
              icon: const Icon(Icons.clear),
              onPressed: () {
                textEditingController.clear();
                onTap;
              },
            )
                : null,
          ),
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
