import 'dart:convert';

SingleBookModel singleBookModelFromJson(String str) => SingleBookModel.fromJson(json.decode(str));

String singleBookModelToJson(SingleBookModel data) => json.encode(data.toJson());

class SingleBookModel {
  Book book;
  List<Comment> comments;

  SingleBookModel({
    required this.book,
    required this.comments,
  });

  SingleBookModel copyWith({
    Book? book,
    List<Comment>? comments,
  }) =>
      SingleBookModel(
        book: book ?? this.book,
        comments: comments ?? this.comments,
      );

  factory SingleBookModel.fromJson(Map<String, dynamic> json) => SingleBookModel(
    book: Book.fromJson(json["book"]),
    comments: List<Comment>.from(json["comments"].map((x) => Comment.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "book": book.toJson(),
    "comments": List<dynamic>.from(comments.map((x) => x.toJson())),
  };
}

class Book {
  String title;
  String id;
  String description;
  num? rating;
  List<String> categoryNames;
  dynamic comments;
  String author;

  Book({
    required this.title,
    required this.id,
    required this.description,
    required this.rating,
    required this.categoryNames,
    required this.comments,
    required this.author,
  });

  Book copyWith({
    String? title,
    String? id,
    String? description,
    int? rating,
    List<String>? categoryNames,
    dynamic comments,
    String? author,
  }) =>
      Book(
        title: title ?? this.title,
        id: id ?? this.id,
        description: description ?? this.description,
        rating: rating ?? this.rating,
        categoryNames: categoryNames ?? this.categoryNames,
        comments: comments ?? this.comments,
        author: author ?? this.author,
      );

  factory Book.fromJson(Map<String, dynamic> json) => Book(
    title: json["title"],
    id: json["id"],
    description: json["description"],
    rating: json["rating"],
    categoryNames: List<String>.from(json["categoryNames"].map((x) => x)),
    comments: json["comments"],
    author: json["author"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "id": id,
    "description": description,
    "rating": rating,
    "categoryNames": List<dynamic>.from(categoryNames.map((x) => x)),
    "comments": comments,
    "author": author,
  };
}

class Comment {
  String body;
  String id;
  dynamic displayName;
  int rating;
  String userId;

  Comment({
    required this.body,
    required this.id,
    required this.displayName,
    required this.rating,
    required this.userId,
  });

  Comment copyWith({
    String? body,
    String? id,
    dynamic displayName,
    int? rating,
    String? userId,
  }) =>
      Comment(
        body: body ?? this.body,
        id: id ?? this.id,
        displayName: displayName ?? this.displayName,
        rating: rating ?? this.rating,
        userId: userId ?? this.userId,
      );

  factory Comment.fromJson(Map<String, dynamic> json) => Comment(
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
