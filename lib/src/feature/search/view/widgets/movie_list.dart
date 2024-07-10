import 'dart:developer';

import 'package:audio_book/setup.dart';
import 'package:audio_book/src/core/routes/app_route_name.dart';
import 'package:audio_book/src/data/repository/app_repository_impl.dart';
import 'package:audio_book/src/feature/search/controller/search_controller.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../core/style/colors.dart';
import '../../../../core/style/text_style.dart';

class MovieListSearch extends StatefulWidget {
  final SearchBookController controller;
  MovieListSearch({super.key}) : controller = SearchBookController(AppRepositoryImpl());

  @override
  State<MovieListSearch> createState() => _MovieListSearchState();
}

class _MovieListSearchState extends State<MovieListSearch> {


  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider<SearchBookController>(
      create: (context){
        widget.controller.getABook("searchedBooks");
        log(widget.controller.storageModel.length.toString());

        return widget.controller;
      },
      child: Consumer<SearchBookController>(
        builder: (context, value, child)=> value.storageModel.isEmpty ? Center(
          child: Text(
            "You have not searched something yet...",
            style: AppTextStyle.homeCategoriesMedium,
          ),
        ) : Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            height: 220,
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(width: 17),
              scrollDirection: Axis.horizontal,
              itemCount: value.storageModel.length,
              itemBuilder: (context, index) {
                final reversed = value.storageModel.reversed.toList();

                return GestureDetector(
                  onTap: (){
                    context.go(
                        "${AppRouteName.mainPage}${AppRouteName.searchPage.substring(1)}/${AppRouteName.bookSearchPage}",
                      extra: [reversed[index]]
                    );
                  },
                  child: Column(
                    children: [
                      SizedBox(
                        width: 160,
                        height: 160,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "$address/api/file/image/${reversed[index]!.id}"
                                  ),
                                fit: BoxFit.cover
                              )
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          reversed[index]!.title.length >= 15
                              ? "${reversed[index]!.title.substring(0, 12)}...\n"
                              : "${reversed[index]!.title}\n",
                          style: AppTextStyle.homeCategoryTextMedium?.copyWith(
                              color: AppColors.c2E2E5D),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
