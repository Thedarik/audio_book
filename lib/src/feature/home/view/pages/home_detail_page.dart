import 'package:audio_book/src/core/style/colors.dart';
import 'package:audio_book/src/core/style/text_style.dart';
import 'package:audio_book/src/feature/home/view/widgets/movie_list.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeDetailPage extends StatelessWidget {
  const HomeDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: <Widget>[
            const SizedBox(width: 20),

            IconButton(
                onPressed: (){
                  context.pop();
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 24,
                  color: AppColors.c2E2E5D,
                )
            ),

            const SizedBox(width: 80),

            Text(
              "New Releases",
              style: AppTextStyle.homeCategoryTextMedium?.copyWith(
                  color: AppColors.c2E2E5D
              ),
            )
          ],
        ),
      ),
      body: const Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: MovieList(),
            ),
          )
        ],
      ),
    );
  }
}
