import 'dart:convert';
import 'dart:developer';

import 'package:audio_book/src/feature/home/model/home_book_model.dart';
import 'package:audio_book/src/feature/home/model/refresh_model.dart';
import 'package:audio_book/src/feature/home/model/search_models.dart';
import 'package:audio_book/src/feature/home/model/single_book_model.dart';
import 'package:audio_book/src/feature/search/model/search_model.dart';
import 'package:http/src/response.dart';

import '../../core/api/api.dart';
import 'app_repository.dart';

class AppRepositoryImpl implements AppRepository{
  @override
  Future<HomeBookModel?> getHomeBooks()async{
    String? str = await Api.GET(Api.apiBookHome);
    if(str!=null){
      HomeBookModel homeBooksModel = homeBookModelFromJson(str);
      return homeBooksModel;
    }else{
      return null;
    }
  }

  @override
  Future<RefreshModel?> refreshToken(String access)async {
    String? str = await Api.GET(Api.apiGetRefresh);
    if (str != null) {
      RefreshModel refreshModel = refreshModelFromJson(str);
      return refreshModel;
    } else {
      return null;
    }
  }

  @override
  Future<List<SearchModels?>> searchBooks(String text)async{
    String? str = await Api.GET("${Api.apiBookSearch}$text");
    if(str != null){
      return searchFromJson(str);
    }else{
      return [];
    }
  }

  @override
  Future<Response> fetchPDF(String id)async{
    Response str = await Api.getPDF("${Api.apiFilePDF}/$id");
    return str;
  }

  @override
  Future<SingleBookModel?> getABook(String id) async {
    try {
      String? str = await Api.GET("${Api.apiBook}/$id");
      if (str != null) {
        log("API Response: $str");
        final jsonResponse = jsonDecode(str);

        return SingleBookModel.fromJson(jsonResponse);
      } else {
        log("API response is null");
        return null;
      }
    } catch (e, stackTrace) {
      log("Error in getABook: $e", error: e, stackTrace: stackTrace);
      return null;
    }
  }
}