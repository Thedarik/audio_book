import 'package:flutter/material.dart';

class AuthController extends ChangeNotifier {
  AuthController._internal();
  static final AuthController _instance = AuthController._internal();
  factory AuthController() {
    return _instance;
  }
}