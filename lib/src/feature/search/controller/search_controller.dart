import 'dart:developer';
import 'dart:io';

import 'package:audio_book/src/core/storage/app_storage.dart';
import 'package:audio_book/src/data/repository/app_repository.dart';
import 'package:audio_book/src/feature/home/model/home_book_model.dart';
import 'package:audio_book/src/feature/home/model/search_models.dart';
import 'package:audio_book/src/feature/search/model/search_model.dart';
import 'package:audio_book/src/feature/search/model/storage_model.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class SearchBookController extends ChangeNotifier {
  final AppRepository appRepository;
  SearchBookController(this.appRepository);
  bool _isLoading = false;
  bool get isLoading => _isLoading;
  List<SearchModels?> searchModel = [];
  List<StorageModel?> storageModel = [];
  File? file;


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


  Future<void> saveABook(String id, StorageModel storageModel)async{
    await AppStorage.storeBook(key: id, storageModel: storageModel);
  }

  Future<void> getABook(String id)async{
    storageModel = (await AppStorage.loadBook(key: id));
    notifyListeners();
  }



  Future<void> search(String text)async{
    _isLoading = true;
    notifyListeners();

    searchModel = await appRepository.searchBooks(text);

    _isLoading = false;
    notifyListeners();
  }

  void clearSearchResults() {
    searchModel = [];
    notifyListeners();
  }

}