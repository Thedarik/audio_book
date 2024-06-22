import 'package:audio_book/src/core/style/colors.dart';
import 'package:audio_book/src/core/style/images.dart';
import 'package:audio_book/src/core/style/text_style.dart';
import 'package:flutter/material.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: SizedBox(height: 46, width: 165, child: AppImages.inActiveHomeIcon),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: IconButton(
              onPressed: () {},
              icon: AppImages.settingIcon,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 42),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "My Books",
                style: AppTextStyle.homeBookNameMedium?.copyWith(fontSize: 24, color: AppColors.c010104, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: 53,
              width: double.infinity,
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: AppColors.cF5F5FA,
                    hintText: 'Search Books or Author...',
                    hintStyle: AppTextStyle.loginFieldSmall),
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: SizedBox(
                      height: 104,
                      width: 335, // Set width for each ListTile
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 80,
                              height: 80,
                              child: DecoratedBox(
                                decoration: BoxDecoration(color: Colors.blue),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Asadbek Ibragimov $index',
                                    style: AppTextStyle.homeBookNameMedium,
                                  ),
                                  Text(
                                    'Subtitle $index',
                                    style: AppTextStyle.splashVersionLabelLarge,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
