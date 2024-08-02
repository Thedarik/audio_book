import 'dart:core';

import 'package:audio_book/setup.dart';

enum Language { en, uz, ru }

class LanguageService {
  static Language _language = service.read("til") == "1"
      ? Language.uz
      : service.read("til") == "2"
          ? Language.en
          : service.read("til") == "3"
              ? Language.ru
              : Language.en;

  static Language get getLanguage => _language;

  static set setLanguage(Language language) {
    _language = language;
  }

  static void switchLanguage(var language) {
    switch (language) {
      case "1":
        {
          // as
          LanguageService.setLanguage = Language.uz;
          break;
        }
      case "2":
        {
          LanguageService.setLanguage = Language.en;
          break;
        }
      case "3":
        {
          LanguageService.setLanguage = Language.ru;
          break;
        }
      default:
        {
          LanguageService.setLanguage = Language.en;
          break;
        }
    }
  }
}
