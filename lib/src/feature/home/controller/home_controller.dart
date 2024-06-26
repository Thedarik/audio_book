import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  HomeController._internal();
  static final HomeController _instance = HomeController._internal();
  factory HomeController() {
    return _instance;
  }
}

