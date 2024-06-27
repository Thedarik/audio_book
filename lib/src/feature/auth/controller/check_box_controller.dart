import 'dart:developer';

import 'package:flutter/cupertino.dart';

class CheckboxStateNotifier with ChangeNotifier {
  bool _isChecked = false;

  bool get isChecked => _isChecked;

  void toggleCheckbox() {
    log("message");
    _isChecked = !_isChecked;
    notifyListeners();
  }
}