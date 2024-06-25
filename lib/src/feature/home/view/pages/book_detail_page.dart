import 'package:audio_book/src/core/style/colors.dart';
import 'package:audio_book/src/core/style/text_style.dart';
import 'package:audio_book/src/feature/home/view/widgets/author_texts.dart';
import 'package:audio_book/src/feature/home/view/widgets/categories.dart';
import 'package:audio_book/src/feature/home/view/widgets/play_buttons.dart';
import 'package:audio_book/src/feature/home/view/widgets/review_details.dart';
import 'package:audio_book/src/feature/home/view/widgets/summary_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookDetailPage extends StatefulWidget {
  const BookDetailPage({super.key});

  @override
  State<BookDetailPage> createState() => _BookDetailPageState();
}

class _BookDetailPageState extends State<BookDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround      ,
          children: [
            IconButton(
                onPressed: (){
                  context.pop();
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 26,
                  color: AppColors.c2E2E5D,
                )
            ),

            Text(
              "Harry Potter and The Sorc...",
              style: AppTextStyle.homeCategoriesMedium
            ),

            IconButton(
                onPressed: (){},
                icon: const Icon(
                  Icons.more_horiz,
                  size: 26,
                  color: AppColors.c2E2E5D,
                )
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 25),

              const SizedBox(
                height: 260,
                width: 260,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.blue
                  ),
                ),
              ),

              const SizedBox(height: 25),

              const AuthorTexts(),

              const SizedBox(height: 20),

              const Categories(),

              const SizedBox(height: 30),

              const PlayButtons(),

              const SizedBox(height: 30),

              Padding(
                padding: const EdgeInsets.only(right: 260),
                child: Text(
                  "Summary",
                  style: AppTextStyle.homeSeeMoreSmall?.copyWith(
                    color: AppColors.c2E2E5D
                  ),
                ),
              ),

              const SizedBox(height: 10),

              const SummaryText(),

              const SizedBox(height: 40),

              Padding(
                padding: const EdgeInsets.only(right: 275),
                child: Text(
                  "Review",
                  style: AppTextStyle.homeSeeMoreSmall?.copyWith(
                      color: AppColors.c2E2E5D
                  ),
                ),
              ),

              const SizedBox(height: 20),

              const ReviewDetails(),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
