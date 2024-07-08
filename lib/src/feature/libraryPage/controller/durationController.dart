import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class DurationSlider with ChangeNotifier {
  final AudioPlayer _audioPlayer = AudioPlayer();
  Duration _duration = Duration.zero;
  Duration _position = Duration.zero;
  bool _isPlaying = false;

  Duration get duration => _duration;
  Duration get position => _position;
  bool get isPlaying => _isPlaying;

  DurationSlider() {
    _audioPlayer.onDurationChanged.listen((Duration d) {
      _duration = d;
      notifyListeners();
    });

    _audioPlayer.onPositionChanged.listen((Duration p) {
      _position = p;
      notifyListeners();
    });
  }

  void seekToSecond(int second) {
    Duration newDuration = Duration(seconds: second);
    _audioPlayer.seek(newDuration);
  }

  void playPause() {
    if (_isPlaying) {
      _audioPlayer.pause();
    } else {
      _audioPlayer.play(UrlSource('https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3'));
    }
    _isPlaying = !_isPlaying;
    notifyListeners();
  }
}