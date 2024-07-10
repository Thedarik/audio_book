import 'package:audio_book/src/feature/home/model/home_book_model.dart';
import 'package:audio_book/src/feature/home/model/refresh_model.dart';
import 'package:audio_book/src/feature/home/model/search_models.dart';
import 'package:audio_book/src/feature/home/model/single_book_model.dart';
import 'package:http/http.dart';

abstract class AppRepository{
  Future<HomeBookModel?> getHomeBooks();

  Future<SingleBookModel?> getABook(String id);

  Future<List<SearchModels?>> searchBooks(String text);

  Future<Response> fetchPDF(String id);

  Future<RefreshModel?> refreshToken(String access);
}