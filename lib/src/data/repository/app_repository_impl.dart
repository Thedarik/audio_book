import 'package:audio_book/src/feature/home/model/home_book_model.dart';
import 'package:audio_book/src/feature/home/model/refresh_model.dart';

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
}