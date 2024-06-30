import 'package:audio_book/src/feature/home/model/home_book_model.dart';
import 'package:audio_book/src/feature/home/model/refresh_model.dart';

abstract class AppRepository{
  Future<HomeBooksModel?> getHomeBooks();

  Future<RefreshModel?> refreshToken(String access);
}