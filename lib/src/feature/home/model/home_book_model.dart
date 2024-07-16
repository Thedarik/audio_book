// To parse this JSON data, do
//
//     final homeBookModel = homeBookModelFromJson(jsonString);

import 'dart:convert';

HomeBookModel homeBookModelFromJson(String str) => HomeBookModel.fromJson(json.decode(str));

String homeBookModelToJson(HomeBookModel data) => json.encode(data.toJson());

class HomeBookModel {
  List<BestSeller>? recommended;
  List<BestSeller>? bestSeller;
  List<BestSeller>? newRelease;
  List<BestSeller>? trendingNow;

  HomeBookModel({
    this.recommended,
    this.bestSeller,
    this.newRelease,
    this.trendingNow,
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
    recommended: json["recommended"] == null ? [] : List<BestSeller>.from(json["recommended"]!.map((x) => BestSeller.fromJson(x))),
    bestSeller: json["best-seller"] == null ? [] : List<BestSeller>.from(json["best-seller"]!.map((x) => BestSeller.fromJson(x))),
    newRelease: json["new-release"] == null ? [] : List<BestSeller>.from(json["new-release"]!.map((x) => BestSeller.fromJson(x))),
    trendingNow: json["trending-now"] == null ? [] : List<BestSeller>.from(json["trending-now"]!.map((x) => BestSeller.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "recommended": recommended == null ? [] : List<dynamic>.from(recommended!.map((x) => x.toJson())),
    "best-seller": bestSeller == null ? [] : List<dynamic>.from(bestSeller!.map((x) => x.toJson())),
    "new-release": newRelease == null ? [] : List<dynamic>.from(newRelease!.map((x) => x.toJson())),
    "trending-now": trendingNow == null ? [] : List<dynamic>.from(trendingNow!.map((x) => x.toJson())),
  };
}

class BestSeller {
  String? title;
  String? id;
  dynamic rating;
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
    categoryIds: json["categoryIds"] == null ? [] : List<String>.from(json["categoryIds"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "id": id,
    "rating": rating,
    "author": author,
    "categoryIds": categoryIds == null ? [] : List<dynamic>.from(categoryIds!.map((x) => x)),
  };
}
