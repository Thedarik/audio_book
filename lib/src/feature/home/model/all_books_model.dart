import 'dart:convert';

List<AllBooksModel> allBooksModelFromJson(String str) => List<AllBooksModel>.from(json.decode(str).map((x) => AllBooksModel.fromJson(x)));

String allBooksModelToJson(List<AllBooksModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AllBooksModel {
  String title;
  String id;
  List<String> categoryIds;
  int rating;
  String author;

  AllBooksModel({
    required this.title,
    required this.id,
    required this.categoryIds,
    required this.rating,
    required this.author,
  });

  AllBooksModel copyWith({
    String? title,
    String? id,
    List<String>? categoryIds,
    int? rating,
    String? author,
  }) =>
      AllBooksModel(
        title: title ?? this.title,
        id: id ?? this.id,
        categoryIds: categoryIds ?? this.categoryIds,
        rating: rating ?? this.rating,
        author: author ?? this.author,
      );

  factory AllBooksModel.fromJson(Map<String, dynamic> json) => AllBooksModel(
    title: json["title"],
    id: json["id"],
    categoryIds: List<String>.from(json["categoryIds"].map((x) => x)),
    rating: json["rating"],
    author: json["author"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "id": id,
    "categoryIds": List<dynamic>.from(categoryIds.map((x) => x)),
    "rating": rating,
    "author": author,
  };
}
