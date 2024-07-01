import 'package:audio_book/src/core/localization/enum/en.dart';
import 'package:audio_book/src/core/localization/enum/ru.dart';
import 'package:audio_book/src/core/localization/enum/uz.dart';
import 'package:audio_book/src/core/localization/language.dart';

extension TranslateString on String {
  String get tr {
    switch (LanguageService.getLanguage) {
      case Language.uz:
        {
          return uz[this] ?? this;
        }
      case Language.en:
        {
          return en[this] ?? this;
        }
      case Language.ru:
        {
          return ru[this] ?? this;
        }
    }
  }
}
