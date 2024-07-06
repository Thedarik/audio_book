import 'package:audio_book/src/feature/home/model/home_book_model.dart';
import 'package:audio_book/src/feature/home/model/refresh_model.dart';
import 'package:audio_book/src/feature/search/model/search_model.dart';
import 'package:http/src/response.dart';

import '../../core/api/api.dart';
import 'app_repository.dart';

class AppRepositoryImpl implements AppRepository{
  @override
  Future<HomeBooksModel?> getHomeBooks()async{
    String? str = await Api.GET(Api.apiBookHome);
    if(str!=null){
      HomeBooksModel homeBooksModel = homeBooksModelFromJson(str);
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
  Future<List<SearchModel?>> searchBooks(String text)async{
    String? str = await Api.GET("${Api.apiBookSearch}$text");
    if(str != null){
      return searchModelFromJson(str);
    }else{
      return [];
    }
  }

  @override
  Future<Response> fetchPDF()async{
    Response str = await Api.getPDF("${Api.apiFilePDF}/30ed30d5-e8e0-44bf-bfef-efd4f0addf52");
    return str;
  }
}