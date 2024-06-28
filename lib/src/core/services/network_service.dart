import 'package:audio_book/src/core/api/api.dart';

class NetworkService{
  static const NetworkService _service = NetworkService._internal();
  const NetworkService._internal();

  factory NetworkService(){
    return _service;
  }

  /// base url
  static const String _baseUrl = 'localhost:8080';

  /// apis
static const String apiSignUp = '/api/auth/sign-up';
}
