import 'dart:convert';

HomeBookModel homeBookModelFromJson(String str) => HomeBookModel.fromJson(json.decode(str));

String homeBookModelToJson(HomeBookModel data) => json.encode(data.toJson());

class HomeBookModel {
  List<BestSeller> recommended;
  List<BestSeller> bestSeller;
  List<BestSeller> newRelease;
  List<BestSeller> trendingNow;

  HomeBookModel({
    required this.recommended,
    required this.bestSeller,
    required this.newRelease,
    required this.trendingNow,
  });

  HomeBookModel copyWith({
    List<BestSeller>? recommended,
    List<BestSeller>? bestSeller,
    List<BestSeller>? newRelease,
    List<BestSeller>? trendingNow,
  }) =>
      HomeBookModel(
        recommended: recommended ?? this.recommended,
        bestSeller: bestSeller ?? this.bestSeller,
        newRelease: newRelease ?? this.newRelease,
        trendingNow: trendingNow ?? this.trendingNow,
      );

  factory HomeBookModel.fromJson(Map<String, dynamic> json) => HomeBookModel(
    recommended: List<BestSeller>.from(json["recommended"].map((x) => BestSeller.fromJson(x))),
    bestSeller: List<BestSeller>.from(json["best-seller"].map((x) => BestSeller.fromJson(x))),
    newRelease: List<BestSeller>.from(json["new-release"].map((x) => BestSeller.fromJson(x))),
    trendingNow: List<BestSeller>.from(json["trending-now"].map((x) => BestSeller.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "recommended": List<dynamic>.from(recommended.map((x) => x.toJson())),
    "best-seller": List<dynamic>.from(bestSeller.map((x) => x.toJson())),
    "new-release": List<dynamic>.from(newRelease.map((x) => x.toJson())),
    "trending-now": List<dynamic>.from(trendingNow.map((x) => x.toJson())),
  };
}

class BestSeller {
  String? title;
  String? id;
  num? rating;
  String? author;
  List<String>? categoryIds;

  BestSeller({
    this.title,
    this.id,
    this.rating,
    this.author,
    this.categoryIds,
  });

  BestSeller copyWith({
    String? title,
    String? id,
    dynamic rating,
    String? author,
    List<String>? categoryIds,
  }) =>
      BestSeller(
        title: title ?? this.title,
        id: id ?? this.id,
        rating: rating ?? this.rating,
        author: author ?? this.author,
        categoryIds: categoryIds ?? this.categoryIds,
      );

  factory BestSeller.fromJson(Map<String, dynamic> json) => BestSeller(
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
    "categoryIds": List<dynamic>.from(categoryIds!.map((x) => x)),
  };
}
