import 'package:flutter/material.dart';
import 'package:l/l.dart';

Future<void> setup() async {
  WidgetsFlutterBinding.ensureInitialized();

  await getStorageValues();
}

String? token;
Future<void> getStorageValues() async {
  l.w(token ?? '------\n------------\n-----------\n-------' ' ====================================');
}


