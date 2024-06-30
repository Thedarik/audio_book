import 'package:audio_book/src/feature/home/model/refresh_model.dart';

abstract class AppRepository{
  Future<List?> getHomeBooks();

  Future<RefreshModel?> refreshToken(String access);
}