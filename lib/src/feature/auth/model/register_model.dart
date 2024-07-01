import 'dart:convert';

RegisterModel registerModelFromJson(String str) => RegisterModel.fromJson(json.decode(str));

String registerModelToJson(RegisterModel data) => json.encode(data.toJson());

class RegisterModel {
  final String? email;
  final String? password;
  final String? birthDate;
  final String? verificationCode;

  RegisterModel({
    this.email,
    this.password,
    this.birthDate,
    this.verificationCode,
  });

  RegisterModel copyWith({
    String? email,
    String? password,
    String? birthDate,
    String? verificationCode,
  }) =>
      RegisterModel(
        email: email ?? this.email,
        password: password ?? this.password,
        birthDate: birthDate ?? this.birthDate,
        verificationCode: verificationCode ?? this.verificationCode,
      );

  factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
    email: json["email"],
    password: json["password"],
    birthDate: json["birthDate"],
    verificationCode: json["verificationCode"],
  );

  Map<String, dynamic> toJson() => {
    "email": email,
    "password": password,
    "birthDate": birthDate,
    "verificationCode": verificationCode,
  };
}
