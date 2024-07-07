// To parse this JSON data, do
//
//     final categoryIdsModel = categoryIdsModelFromJson(jsonString);

import 'dart:convert';

CategoryIdsModel categoryIdsModelFromJson(String str) => CategoryIdsModel.fromJson(json.decode(str));

String categoryIdsModelToJson(CategoryIdsModel data) => json.encode(data.toJson());

class CategoryIdsModel {
  final List<String>? categoryIds;

  CategoryIdsModel({
    this.categoryIds,
  });

  CategoryIdsModel copyWith({
    List<String>? categoryIds,
  }) =>
      CategoryIdsModel(
        categoryIds: categoryIds ?? this.categoryIds,
      );

  factory CategoryIdsModel.fromJson(Map<String, dynamic> json) => CategoryIdsModel(
    categoryIds: json["categoryIds"] == null ? [] : List<String>.from(json["categoryIds"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "categoryIds": categoryIds == null ? [] : List<dynamic>.from(categoryIds!.map((x) => x)),
  };
}
