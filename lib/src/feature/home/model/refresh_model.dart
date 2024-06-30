import 'dart:convert';

RefreshModel refreshModelFromJson(String str) => RefreshModel.fromJson(json.decode(str));

String refreshModelToJson(RefreshModel data) => json.encode(data.toJson());

class RefreshModel {
  String accessToken;

  RefreshModel({
    required this.accessToken,
  });

  RefreshModel copyWith({
    String? accessToken,
  }) =>
      RefreshModel(
        accessToken: accessToken ?? this.accessToken,
      );

  factory RefreshModel.fromJson(Map<String, dynamic> json) => RefreshModel(
    accessToken: json["accessToken"],
  );

  Map<String, dynamic> toJson() => {
    "accessToken": accessToken,
  };
}
