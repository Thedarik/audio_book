import 'dart:convert';

List<CategoryModel> categoryModelFromJson(String str) => List<CategoryModel>.from(json.decode(str).map((x) => CategoryModel.fromJson(x)));

String categoryModelToJson(List<CategoryModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CategoryModel {
  final String? id;
  final String? name;

  CategoryModel({
    this.id,
    this.name,
  });

  CategoryModel copyWith({
    String? id,
    String? name,
  }) =>
      CategoryModel(
        id: id ?? this.id,
        name: name ?? this.name,
      );

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };
}
