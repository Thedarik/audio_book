import 'package:flutter/material.dart';

class CategoryStateNotifier extends ChangeNotifier {
  final Map<String, bool> _categoryStates = {};
  int _topicsSelected = 0;

  bool isPressed(String category) {
    return _categoryStates[category] ?? false;
  }

  int get topicsSelected => _topicsSelected;

  void toggleCategory(String category) {
    if (_categoryStates[category] == true) {
      _topicsSelected--;
    } else {
      _topicsSelected++;
    }
    _categoryStates[category] = !(_categoryStates[category] ?? false);
    notifyListeners();
  }
}
