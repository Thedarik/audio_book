import 'dart:convert';

List<dynamic> singleBookModelFromJson(String str) => List<dynamic>.from(json.decode(str).map((x) => x));

String singleBookModelToJson(List<dynamic> data) => json.encode(List<dynamic>.from(data.map((x) => x)));

class SingleBookModelElement {
  dynamic body;
  String id;
  String displayName;
  int rating;
  String userId;

  SingleBookModelElement({
    required this.body,
    required this.id,
    required this.displayName,
    required this.rating,
    required this.userId,
  });

  SingleBookModelElement copyWith({
    dynamic body,
    String? id,
    String? displayName,
    int? rating,
    String? userId,
  }) =>
      SingleBookModelElement(
        body: body ?? this.body,
        id: id ?? this.id,
        displayName: displayName ?? this.displayName,
        rating: rating ?? this.rating,
        userId: userId ?? this.userId,
      );

  factory SingleBookModelElement.fromJson(Map<String, dynamic> json) => SingleBookModelElement(
    body: json["body"],
    id: json["id"],
    displayName: json["displayName"],
    rating: json["rating"],
    userId: json["userId"],
  );

  Map<String, dynamic> toJson() => {
    "body": body,
    "id": id,
    "displayName": displayName,
    "rating": rating,
    "userId": userId,
  };
}

class PurpleSingleBookModel {
  String title;
  String id;
  String description;
  double rating;
  List<String> categoryNames;
  String author;

  PurpleSingleBookModel({
    required this.title,
    required this.id,
    required this.description,
    required this.rating,
    required this.categoryNames,
    required this.author,
  });

  PurpleSingleBookModel copyWith({
    String? title,
    String? id,
    String? description,
    double? rating,
    List<String>? categoryNames,
    String? author,
  }) =>
      PurpleSingleBookModel(
        title: title ?? this.title,
        id: id ?? this.id,
        description: description ?? this.description,
        rating: rating ?? this.rating,
        categoryNames: categoryNames ?? this.categoryNames,
        author: author ?? this.author,
      );

  factory PurpleSingleBookModel.fromJson(Map<String, dynamic> json) => PurpleSingleBookModel(
    title: json["title"],
    id: json["id"],
    description: json["description"],
    rating: json["rating"]?.toDouble(),
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
