import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:audio_book/src/core/localization/app_language.dart';
import 'package:audio_book/src/feature/home/model/home_book_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:path_provider/path_provider.dart';

import '../../../core/routes/app_route_name.dart';
import '../../../core/storage/app_storage.dart';
import '../../../data/repository/app_repository.dart';
import '../../search/model/storage_model.dart';
import '../model/single_book_model.dart';

class HomeController extends ChangeNotifier {
  final AppRepository appRepository;
  HomeController(this.appRepository);
  bool _isLoading = false;
  bool get isLoading => _isLoading;
  HomeBookModel? homeBooksModel;
  SingleBookModel? singleBookModel;
  List<StorageModel?> storageModel = [];
  File? file;

  Future<void> saveABook(String id, StorageModel storageModel)async{
    await AppStorage.storeBook(key: id, storageModel: storageModel);
  }

  Future<void> getABook(String id)async{
    storageModel = (await AppStorage.loadBook(key: id));
    notifyListeners();
  }

  Future<void> getASingleBook(String id)async{
    _isLoading = true;
    notifyListeners();

    singleBookModel = await appRepository.getABook(id);
    log(singleBookModel!.book.author.toString());

    _isLoading = false;
    notifyListeners();
  }

  Future<void> fetchPDF(String id) async {
    log("Fetching PDF...");
    _isLoading = true;
    notifyListeners();

    try {
      final response = await appRepository.fetchPDF(id);
      final directory = await getApplicationDocumentsDirectory();

      final timestamp = DateTime.now().millisecondsSinceEpoch;
      final path = "${directory.path}/downloaded_file_$timestamp.pdf";
      file = File(path);

      await file!.writeAsBytes(response.bodyBytes);
      log("PDF saved at: $path");
    } catch (e) {
      log("Error fetching PDF: $e");
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> getHomeBooks()async{
    _isLoading = true;
    notifyListeners();

    String? access = await AppStorage.load(key: StorageKey.token);
    homeBooksModel = (await appRepository.getHomeBooks())!;

    _isLoading = false;
    notifyListeners();
  }

  int selectedIndex = 0;
  double rating = 0.0;

  void onTap(double value){
    rating = value.ceilToDouble();
    notifyListeners();
    log(rating.toString());
  }


  void onItemTapped(int index, BuildContext context) {
    selectedIndex = index;
    notifyListeners();

    switch (index) {
      case 0:
        context.go("${AppRouteName.mainPage}${AppRouteName.homePage.substring(1)}");
        break;
      case 1:
        context.go("${AppRouteName.mainPage}${AppRouteName.searchPage.substring(1)}");
        break;
      case 2:
        context.go("${AppRouteName.mainPage}${AppRouteName.libraryPage.substring(1)}");
        break;
    }
  }
}

