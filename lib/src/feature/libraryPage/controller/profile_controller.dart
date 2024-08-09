import 'package:audio_book/src/core/api/api.dart';
import 'package:audio_book/src/feature/libraryPage/models/profilemodel.dart';
import 'package:flutter/material.dart';

class ProfileController with ChangeNotifier {
  late ProfileModel profile;
  bool isLoading = true;

  Future<void> getUser() async {
    isLoading = true;
    notifyListeners();
    String? str = await Api.GET(Api.apiUserMe);
    if (str != null) {
      profile = profileModelFromJson(str);
      isLoading = false;
      notifyListeners();
    } else {
      isLoading = false;
      notifyListeners();
    }
  }
}
