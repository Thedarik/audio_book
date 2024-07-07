import 'dart:async';
import 'package:flutter/foundation.dart';

class TimerProvider with ChangeNotifier {
  late Timer _timer;
  bool _isActive = false;
  int _secondsLeft = 0;

  bool get isActive => _isActive;
  int get secondsLeft => _secondsLeft;

  void startTimer() {
    if (!_isActive) {
      _isActive = true;
      _secondsLeft = 120; // 2 minutes
      _timer = Timer.periodic(Duration(seconds: 1), (timer) {
        if (_secondsLeft > 0) {
          _secondsLeft--;
          notifyListeners();
        } else {
          _isActive = false;
          _timer.cancel();
          notifyListeners();
        }
      });
      notifyListeners();
    }
  }

  void resetTimer() {
    _isActive = false;
    _secondsLeft = 0;
    _timer?.cancel();
    notifyListeners();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
