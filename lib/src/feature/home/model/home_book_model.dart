import 'dart:convert';

HomeBooksModel homeBooksModelFromJson(String str) => HomeBooksModel.fromJson(json.decode(str));

String homeBooksModelToJson(HomeBooksModel data) => json.encode(data.toJson());

class HomeBooksModel {
  List<BestSeller>? recommended;
  List<BestSeller>? bestSeller;
  List<BestSeller>? newRelease;
  List<BestSeller>? trendingNow;

  HomeBooksModel({
    this.recommended,
    this.bestSeller,
    this.newRelease,
    this.trendingNow,
  });

  HomeBooksModel copyWith({
    List<BestSeller>? recommended,
    List<BestSeller>? bestSeller,
    List<BestSeller>? newRelease,
    List<BestSeller>? trendingNow,
  }) =>
      HomeBooksModel(
        recommended: recommended ?? this.recommended,
        bestSeller: bestSeller ?? this.bestSeller,
        newRelease: newRelease ?? this.newRelease,
        trendingNow: trendingNow ?? this.trendingNow,
      );

  factory HomeBooksModel.fromJson(Map<String, dynamic> json) => HomeBooksModel(
    recommended: json["recommended"] == null ? null : List<BestSeller>.from(json["recommended"].map((x) => BestSeller.fromJson(x))),
    bestSeller: json["best-seller"] == null ? null : List<BestSeller>.from(json["best-seller"].map((x) => BestSeller.fromJson(x))),
    newRelease: json["new-release"] == null ? null : List<BestSeller>.from(json["new-release"].map((x) => BestSeller.fromJson(x))),
    trendingNow: json["trending-now"] == null ? null : List<BestSeller>.from(json["trending-now"].map((x) => BestSeller.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "recommended": recommended == null ? null : List<dynamic>.from(recommended!.map((x) => x.toJson())),
    "best-seller": bestSeller == null ? null : List<dynamic>.from(bestSeller!.map((x) => x.toJson())),
    "new-release": newRelease == null ? null : List<dynamic>.from(newRelease!.map((x) => x.toJson())),
    "trending-now": trendingNow == null ? null : List<dynamic>.from(trendingNow!.map((x) => x.toJson())),
  };
}

class BestSeller {
  String? title;
  String? id;
  List<String>? categoryIds;
  int? rating;
  String? author;

  BestSeller({
    this.title,
    this.id,
    this.categoryIds,
    this.rating,
    this.author,
  });

  BestSeller copyWith({
    String? title,
    String? id,
    List<String>? categoryIds,
    int? rating,
    String? author,
  }) =>
      BestSeller(
        title: title ?? this.title,
        id: id ?? this.id,
        categoryIds: categoryIds ?? this.categoryIds,
        rating: rating ?? this.rating,
        author: author ?? this.author,
      );

  factory BestSeller.fromJson(Map<String, dynamic> json) => BestSeller(
    title: json["title"],
    id: json["id"],
    categoryIds: json["categoryIds"] == null ? null : List<String>.from(json["categoryIds"].map((x) => x)),
    rating: json["rating"],
    author: json["author"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "id": id,
    "categoryIds": categoryIds == null ? null : List<dynamic>.from(categoryIds!.map((x) => x)),
    "rating": rating,
    "author": author,
  };
}
