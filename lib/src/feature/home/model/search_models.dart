import 'dart:convert';

List<SearchModels> searchFromJson(String str) => List<SearchModels>.from(json.decode(str).map((x) => SearchModels.fromJson(x)));

String searchToJson(List<SearchModels> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SearchModels {
  late String title;
  late String id;
  late String description;
  num? rating;
  late List<String> categoryNames;
  late String author;

  SearchModels({
    required this.title,
    required this.id,
    required this.description,
    required this.rating,
    required this.categoryNames,
    required this.author,
  });

  SearchModels copyWith({
    String? title,
    String? id,
    String? description,
    num? rating,
    List<String>? categoryNames,
    String? author,
  }) =>
      SearchModels(
        title: title ?? this.title,
        id: id ?? this.id,
        description: description ?? this.description,
        rating: rating ?? this.rating,
        categoryNames: categoryNames ?? this.categoryNames,
        author: author ?? this.author,
      );

  factory SearchModels.fromJson(Map<String, dynamic> json) => SearchModels(
    title: json["title"],
    id: json["id"],
    description: json["description"],
    rating: json["rating"],
    categoryNames: List<String>.from(json["categoryNames"].map((x) => x)),
    author: json["author"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "id": id,
    "description": description,
    "rating": rating,
    "categoryNames": List<dynamic>.from(categoryNames.map((x) => x)),
    "author": author,
  };
}