import 'dart:developer';

import 'package:audio_book/src/feature/auth/model/category_model.dart';
import 'package:flutter/material.dart';

import '../../../core/api/api.dart';
import '../../../core/storage/app_storage.dart';

class TakeCategoryProvider extends ChangeNotifier {
  bool _isLoading = false;
  List<CategoryModel?>? _data;
  String? _error;

  bool get isLoading => _isLoading;
  List<CategoryModel?>? get data => _data;
  String? get error => _error;

  Future<void> fetchData() async {
    _isLoading = true;
    notifyListeners();

    try {
      // Simulate a network call
      String? token = await AppStorage.load(key: StorageKey.token,);
      String? categories = await Api.getCategories(Api.apiCategory, token!);
      if(categories != null){
        List<CategoryModel> model = categoryModelFromJson(categories);
        _data = model;
        notifyListeners();
      }else{
        // log(token);
        _data = null;
        notifyListeners();
      }
      _error = null;
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
