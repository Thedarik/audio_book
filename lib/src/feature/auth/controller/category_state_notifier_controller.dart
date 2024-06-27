import 'package:flutter/material.dart';

class CategoryStateNotifier extends ChangeNotifier {
  final Map<String, bool> _categoryStates = {};

  bool isPressed(String category) {
    return _categoryStates[category] ?? false;
  }

  void toggleCategory(String category) {
    _categoryStates[category] = !(_categoryStates[category] ?? false);
    notifyListeners();
  }
}
