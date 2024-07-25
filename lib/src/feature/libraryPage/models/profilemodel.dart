import 'dart:convert';

ProfileModel profileModelFromJson(String str) => ProfileModel.fromJson(json.decode(str));

String profileModelToJson(ProfileModel data) => json.encode(data.toJson());

class ProfileModel {
  final String displayName;
  final String email;
  final String birthDate;
  final String phone;
  final String file;

  ProfileModel({
    required this.displayName,
    required this.email,
    required this.birthDate,
    required this.phone,
    required this.file,
  });

  ProfileModel copyWith({
    String? displayName,
    String? email,
    String? birthDate,
    String? phone,
    String? file,
  }) =>
      ProfileModel(
        displayName: displayName ?? this.displayName,
        email: email ?? this.email,
        birthDate: birthDate ?? this.birthDate,
        phone: phone ?? this.phone,
        file: file ?? this.file,
      );

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
        displayName: json["displayName"],
        email: json["email"],
        birthDate: json["birthDate"],
        phone: json["phone"],
        file: json["file"],
      );

  Map<String, dynamic> toJson() => {
        "displayName": displayName,
        "email": email,
        "birthDate": birthDate,
        "phone": phone,
        "file": file,
      };
}
