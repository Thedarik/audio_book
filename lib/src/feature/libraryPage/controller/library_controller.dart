import 'package:flutter/material.dart';

class LibraryController extends ChangeNotifier {
  LibraryController._internal();
  static final LibraryController _instance = LibraryController._internal();
  factory LibraryController() {
    return _instance;
  }
}