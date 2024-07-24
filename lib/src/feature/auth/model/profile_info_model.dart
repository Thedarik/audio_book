

import 'dart:convert';

ProfileModel profileModelFromJson(String str) => ProfileModel.fromJson(json.decode(str));

String profileModelToJson(ProfileModel data) => json.encode(data.toJson());

class ProfileModel {
  final String? id;
  final dynamic displayName;
  final String? email;
  final DateTime? birthDate;

  ProfileModel({
    this.id,
    this.displayName,
    this.email,
    this.birthDate,
  });

  ProfileModel copyWith({
    String? id,
    dynamic displayName,
    String? email,
    DateTime? birthDate,
  }) =>
      ProfileModel(
        id: id ?? this.id,
        displayName: displayName ?? this.displayName,
        email: email ?? this.email,
        birthDate: birthDate ?? this.birthDate,
      );

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
    id: json["id"],
    displayName: json["displayName"],
    email: json["email"],
    birthDate: json["birthDate"] == null ? null : DateTime.parse(json["birthDate"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "displayName": displayName,
    "email": email,
    "birthDate": "${birthDate!.year.toString().padLeft(4, '0')}-${birthDate!.month.toString().padLeft(2, '0')}-${birthDate!.day.toString().padLeft(2, '0')}",
  };
}
