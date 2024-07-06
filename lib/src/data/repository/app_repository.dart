import 'package:audio_book/src/feature/home/model/home_book_model.dart';
import 'package:audio_book/src/feature/home/model/refresh_model.dart';
import 'package:audio_book/src/feature/search/model/search_model.dart';
import 'package:http/http.dart';

abstract class AppRepository{
  Future<HomeBooksModel?> getHomeBooks();

  Future<List<SearchModel?>> searchBooks(String text);

  Future<Response> fetchPDF();

  Future<RefreshModel?> refreshToken(String access);
}