import 'package:flutter/material.dart';

import '../../../core/storage/app_storage.dart';
import '../../../data/repository/app_repository.dart';
import '../../search/model/storage_model.dart';

class LibraryController extends ChangeNotifier {
  final AppRepository appRepository;
  LibraryController(this.appRepository);
  List<StorageModel?> storageModel = [];
  List<StorageModel?> searchList = [];
  bool _isKeyboardActive = false;
  bool get isKeyboardActive => _isKeyboardActive;

  void searchBook(String text){
    searchList = storageModel.where((book) {
      return book!.title.toLowerCase().contains(text.toLowerCase());
    }).toList();

    notifyListeners();
  }

  void turnOn(){
    _isKeyboardActive = true;
    notifyListeners();
  }

  void turnOFF(){
    _isKeyboardActive = false;
    notifyListeners();
  }

  Future<void> getABook(String id)async{
    storageModel = (await AppStorage.loadBook(key: id));
    notifyListeners();
  }
}