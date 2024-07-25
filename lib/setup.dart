import 'package:audio_book/src/core/localization/app_language.dart';
import 'package:flutter/material.dart';
import 'package:l/l.dart';
import 'package:shared_preferences/shared_preferences.dart';

late final StorageService service;
late final SharedPreferences db;
<<<<<<< HEAD
String address = "http://10.10.3.162:8080";
=======
String address = "http://10.10.1.162:8080";
>>>>>>> b2b3781 (commit by asadbek)

Future<void> setup() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Shared Preferences
  db = await StorageService.init;
  service = StorageService(db: db);
  await getStorageValues();
}

String? token;
Future<void> getStorageValues() async {
  l.w(token ?? '------\n------------\n-----------\n-------' ' ====================================');
}
