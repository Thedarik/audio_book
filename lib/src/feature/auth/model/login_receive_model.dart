import 'dart:convert';

LoginReceiveModel loginReceiveModelFromJson(String str) => LoginReceiveModel.fromJson(json.decode(str));

String loginReceiveModelToJson(LoginReceiveModel data) => json.encode(data.toJson());

class LoginReceiveModel {
  final String? accessToken;
  final String? refreshToken;

  LoginReceiveModel({
    this.accessToken,
    this.refreshToken,
  });

  LoginReceiveModel copyWith({
    String? accessToken,
    String? refreshToken,
  }) =>
      LoginReceiveModel(
        accessToken: accessToken ?? this.accessToken,
        refreshToken: refreshToken ?? this.refreshToken,
      );

  factory LoginReceiveModel.fromJson(Map<String, dynamic> json) => LoginReceiveModel(
    accessToken: json["accessToken"],
    refreshToken: json["refreshToken"],
  );

  Map<String, dynamic> toJson() => {
    "accessToken": accessToken,
    "refreshToken": refreshToken,
  };
}
