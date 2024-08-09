import "dart:convert";
import "dart:developer";
import "package:http/http.dart";
import "package:http_interceptor/http/intercepted_http.dart";
import "package:http_parser/http_parser.dart";

import "../../data/repository/app_interceptor.dart";
import "../storage/app_storage.dart";

class Api {
  // baseurl
  // static const String baseurl = "16.171.23.147:8080";
  // static const String baseurl = "192.168.0.100:8080";
  static const String baseurl = "10.10.2.136:8080";

  // static const String baseurl1 = "10.10.1.83:8080";

  // static const String baseurl2 = "http://10.10.1.170:8080";
  // static const String baseurl = "localhost:8080";
  // static const String baseurl = "192.168.0.105:8080";

  // APIS
  static String apiPostRegister = "/api/auth/register";
  static String apiPostSignUp = "/api/auth/sign-up";
  static String apiGetRefresh = "/api/refresh";
  static String apiPostSignUpVerify = "/api/auth/sign-up/verify";
  static String apiPostSignUpResend = "/api/auth/sign-up/resend";
  static String apiPostLogin = "/api/auth/login";
  static String apiPostLoginForgotPassword = "/api/auth/login/forgot-password";
  static String apiPostLoginConfirm = "/api/auth/login/confirm";

  //Home API
  static String apiBook = "/api/book";
  static String apiBookSearch = "/api/book/search/";
  static String apiBookHome = "/api/book/home";

  static String apiCategoryCustomize = "/api/category/customize";
  static String apiCategoryCustomizeAll = "/api/category/customize/all";
  static String apiCategory = "/api/category";
  static String apiCategoryRecommended = "/api/category/Recommended";

  static String apiFileUserUpload = "api/file/user/upload";
  static String apiFileUser = "api/file/user";
  static String apiFilePDF = "api/file/pdf";
  static String apiFileImage = "api/file/image";
  static String apiFileAudio = "api/file/audio";

  static final http = InterceptedHttp.build(interceptors: [AppInterceptor()]);

  /// Auth small posts
  static Future<String?> forgetPassword(String api, Map<String, dynamic> body) async {
    final Uri url = Uri.http(baseurl, api);
    final Response response = await http.post(url, headers: {
      "Content-Type": "application/json",
    }, body: jsonEncode(body));
    if (response.statusCode == 200 || response.statusCode == 201) {
      log("\n\nPost of Login${response.body}\n\n");
      return response.body;
    }
    return null;
  }

  static Future<String?> resendCode(String api, String tempAuthorizationToken) async {
    Map<String, String> headers3 = <String, String>{
      "Content-Type": "application/json",
      // "Accept": "*/*",
      "TempAuthorization": tempAuthorizationToken,
    };
    final Uri url = Uri.http(baseurl, api);
    final Response response = await http.post(url, headers: headers3);
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    }
    return null;
  }

  static Future<String?> verifyCode({required String verificationCode, required String api, required String tempAuthorizationToken}) async {
    final Uri url = Uri.http(baseurl, api);
    final headers1 = {
      "Content-Type": "application/json",
      'TempAuthorization': tempAuthorizationToken,
    };

    final body = jsonEncode({
      'verificationCode': verificationCode,
    });

    final response = await http.post(url, headers: headers1, body: body);
    log('SHUNAQA XABAR: ${response.body}');

    if (response.statusCode == 200 || response.statusCode == 201) {
      log('\nJSON BODY: ${jsonDecode(response.body)}\n');
      return response.body.toString();
    } else {
      // Handle error
      log('Error: ${response.statusCode}');
      return null;
    }
  }

  static Future<String?> getCategories(String api, String token) async {
    final Uri url = Uri.http(baseurl, api);
    Map<String, String> headers7 = {
      "Authorization": token,
    };
    final Response response = await http.get(url, headers: headers7);
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body.toString();
    }
    return null;
  }

  //methods
  // ignore: non_constant_identifier_names
  static Future<String?> GET(
      String api,
      ) async {
    final Uri url = Uri.http(baseurl, api);
    String access = await AppStorage.load(key: StorageKey.token) as String;
    final Response response = await http.get(url, headers: {
      "Content-Type": "application/json",
      "Authorization": access,
    });
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    }
    return null;
  }

  static Future<String?> GET1(
      String api,
      ) async {
    final Uri url = Uri.http(baseurl, api);
    String access = await AppStorage.load(key: StorageKey.token) as String;
    final Response response = await http.get(url, headers: {
      "Authorization": access,
    });
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    }
    return null;
  }

  static Future<Response> getPDF(
      String api,
      ) async {
    String access = await AppStorage.load(key: StorageKey.token) as String;
    final Uri url = Uri.http(baseurl, api);
    final Response response = await http.get(url, headers: {
      "Content-Type": "application/json",
      "Authorization": access
    });
    return response;
  }

  // ignore: non_constant_identifier_names
  static Future<String?> postCategoryCustomize(String api, Map<String, dynamic> body, String accesToken) async {
    final headers = {
      "Content-Type": "application/json",
      'Authorization': accesToken,
    };
    final Uri url = Uri.http(baseurl, api);
    final Response response = await http.post(url, headers: headers, body: jsonEncode(body));
    if (response.statusCode == 200 || response.statusCode == 201) {
      return jsonEncode(response.body);
    } else {
      log('\n\nBOOODDDYYY: ${jsonEncode(body)}');
      log('\n\n ${response.statusCode}');
      return null;
    }
  }

  // ignore: non_constant_identifier_names
  static Future<String?> POST(String api, Map<String, dynamic> body) async {
    final Uri url = Uri.http(baseurl, api);
    String access = await AppStorage.load(key: StorageKey.token) as String;

    final Response response = await http.post(url, headers: {
      "Content-Type": "application/json",
      'Authorization': access,
    }, body: jsonEncode(body));
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      return null;
    }
  }

  // ignore: non_constant_identifier_names
  static Future<String?> PUT(String api, Map<String, dynamic> body, Map<String, dynamic> param) async {
    final Uri url = Uri.https(baseurl, api, param);
    String access = await AppStorage.load(key: StorageKey.token) as String;

    final Response response = await http.put(url, body: jsonEncode(body), headers: {
      "Content-Type": "application/json",
      'Authorization': access,
    });
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      return null;
    }
  }

  /// params

  static Map<String, String> emptyParams() => <String, String>{};

  /// body

  static Map<String, dynamic> bodyEmpty() => <String, dynamic>{};
}