import 'package:audio_book/src/data/repository/app_repository.dart';
import 'package:audio_book/src/feature/search/model/search_model.dart';
import 'package:flutter/material.dart';

class SearchBookController extends ChangeNotifier {
  final AppRepository appRepository;
  SearchBookController(this.appRepository);
  bool _isLoading = false;
  bool get isLoading => _isLoading;
  List<SearchModel?> searchModel = [];

  Future<void> search(String text)async{
    _isLoading = true;
    notifyListeners();

    searchModel = await appRepository.searchBooks(text);

    _isLoading = false;
    notifyListeners();
  }

}