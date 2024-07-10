import 'package:flutter/material.dart';

import '../../../core/storage/app_storage.dart';
import '../../../data/repository/app_repository.dart';
import '../../search/model/storage_model.dart';

class LibraryController extends ChangeNotifier {
  final AppRepository appRepository;
  LibraryController(this.appRepository);
  List<StorageModel?> storageModel = [];

  Future<void> getABook(String id)async{
    storageModel = (await AppStorage.loadBook(key: id));
    notifyListeners();
  }
}