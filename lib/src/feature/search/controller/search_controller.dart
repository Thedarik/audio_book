import 'package:flutter/material.dart';

class SearchController extends ChangeNotifier {
  SearchController._internal();
  static final SearchController _instance = SearchController._internal();
  factory SearchController() {
    return _instance;
  }
}