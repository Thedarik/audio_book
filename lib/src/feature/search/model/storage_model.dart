class StorageModel{
  late String title;
  late String author;
  late String imagePath;
  late String summary;
  late String category1;
  late String category2;
  late String filePath;
  late String audioPath;
  late String id;
  late num rating;

  StorageModel({
    required this.title,
    required this.author,
    required this.summary,
    required this.filePath,
    required this.audioPath,
    required this.imagePath,
    required this.rating,
    required this.category1,
    required this.category2,
    required this.id
  });

  StorageModel.fromJson(Map<String, Object?> json){
    title = json["title"] as String;
    author = json["author"] as String;
    summary = json["summary"] as String;
    filePath = json["filePath"] as String;
    audioPath = json["audioPath"] as String;
    imagePath = json["imagePath"] as String;
    rating = json["rating"] as num;
    category1 = json["category1"] as String;
    category2 = json["category2"] as String;
    id = json["id"] as String;
  }

  Map<String, Object?> toJson(){
    return {
      "title": title,
      "author": author,
      "summary": summary,
      "filePath": filePath,
      "audioPath": audioPath,
      "imagePath": imagePath,
      "rating": rating,
      "category1": category1,
      "category2": category2,
      "id": id
    };
  }
}