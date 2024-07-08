import 'package:audio_book/src/core/localization/app_language.dart';
import 'package:flutter/material.dart';
import 'package:l/l.dart';
import 'package:shared_preferences/shared_preferences.dart';

late final StorageService service;
late final SharedPreferences db;
String address = "http://192.168.100.110:8080";

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
