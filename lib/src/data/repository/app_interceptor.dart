import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:audio_book/src/core/storage/app_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:http_interceptor/extensions/extensions.dart';
import 'package:http_interceptor/http/interceptor_contract.dart';
import 'package:http_interceptor/models/request_data.dart';
import 'package:http_interceptor/models/response_data.dart';

import 'app_repository_impl.dart';

class AppInterceptor implements InterceptorContract{
  @override
  Future<RequestData> interceptRequest({required RequestData data}) async {
    if (kDebugMode) {
      log(
        "---------[Interceptor]---------ON_REQUEST(${data.method})------------------\n\n"
            "URL: ${data.method}\n"
            "HEADERS: ${data.headers}\n"
            "---------------------------------------------------------------------------\n\n",
      );
    }

    return data;
  }

  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async {
    if (kDebugMode) {
      log(
        "---------[Interceptor]---------ON_RESPONSE(${data.statusCode})------------------\n\n"
            "HEADERS: ${data.headers}\n"
            "BODY: ${data.body}\n"
            "---------------------------------------------------------------------------\n\n",
      );
    }

    if (data.statusCode == 403) {
      String? access = await AppStorage.load(key: StorageKey.token);
      String? refresh = await AppStorage.load(key: StorageKey.refreshToken);

      final refreshedAccessToken = await AppRepositoryImpl().refreshToken();
      if (refreshedAccessToken == null) {
        return data;
      }

      access = refreshedAccessToken.accessToken;
      await AppStorage.store(key: StorageKey.token, value: access);
      await AppStorage.store(key: StorageKey.refreshToken, value: refresh ?? "");

      final Map<String, String> updatedHeaders = {
        "Authorization": "Bearer $access",
      };
      data.request?.headers.forEach((key, value) {
        updatedHeaders[key] = value;
      });
      data.request?.headers.addAll(updatedHeaders);

      final newRequest = http.Request(data.request!.method.name, data.request!.url.toUri());
      final catchResponse = await http.Client().send(newRequest);
      await http.Response.fromStream(catchResponse);
    }
    return data;
  }

}