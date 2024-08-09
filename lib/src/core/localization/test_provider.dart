

import 'package:audio_book/setup.dart';
import 'package:audio_book/src/core/localization/language.dart';
import 'package:flutter/material.dart';

class TestProvider with ChangeNotifier {
  String? til = service.read("til");

  TestProvider(this.til);

  Future<void> dropCall(Object? selectValue) async {
    if (selectValue is  String ) {
      til = selectValue;
      service.store("til", selectValue);
      notifyListeners();
    }
    LanguageService.switchLanguage(til!);
  }
}
