import 'dart:convert';

List<SearchModel> searchModelFromJson(String str) => List<SearchModel>.from(json.decode(str).map((x) => SearchModel.fromJson(x)));

String searchModelToJson(List<SearchModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SearchModel {
  String title;
  String id;
  int rating;
  String author;
  List<String> categoryIds;

  SearchModel({
    required this.title,
    required this.id,
    required this.rating,
    required this.author,
    required this.categoryIds,
  });

  SearchModel copyWith({
    String? title,
    String? id,
    int? rating,
    String? author,
    List<String>? categoryIds,
  }) =>
      SearchModel(
        title: title ?? this.title,
        id: id ?? this.id,
        rating: rating ?? this.rating,
        author: author ?? this.author,
        categoryIds: categoryIds ?? this.categoryIds,
      );

  factory SearchModel.fromJson(Map<String, dynamic> json) => SearchModel(
    title: json["title"],
    id: json["id"],
    rating: json["rating"],
    author: json["author"],
    categoryIds: List<String>.from(json["categoryIds"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "id": id,
    "rating": rating,
    "author": author,
    "categoryIds": List<dynamic>.from(categoryIds.map((x) => x)),
  };
}
