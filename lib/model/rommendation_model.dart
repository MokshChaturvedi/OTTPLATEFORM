import 'dart:convert';

Recommendation recommendationFromJson(String str) =>
    Recommendation.fromJson(json.decode(str));

String recommendationToJson(Recommendation data) => json.encode(data.toJson());

class Recommendation {
  Recommendation({
    required this.items,
  });

  final List<Item> items;

  factory Recommendation.fromJson(Map<String, dynamic> json) => Recommendation(
        items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
      };
}

class Item {
  Item({
    required this.id,
    required this.name,
    required this.image,
    required this.isFav,
    required this.description,
  });

  final int id;
  final String name;
  final String image;
  final bool isFav;
  final Description description;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        isFav: json["isFav"],
        description: Description.fromJson(json["description"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "isFav": isFav,
        "description": description.toJson(),
      };
}

class Description {
  Description({
    required this.name,
    required this.image,
    required this.desc,
    required this.match,
    required this.video,
    required this.subCategory,
    required this.year,
    required this.season,
    required this.rate,
  });

  final String name;
  final String image;
  final String desc;
  final String match;
  final String video;
  final String subCategory;
  final int year;
  final int season;
  final int rate;

  factory Description.fromJson(Map<String, dynamic> json) => Description(
        name: json["name"],
        image: json["image"],
        desc: json["desc"],
        match: json["match"],
        video: json["video"],
        subCategory: json["subCategory"],
        year: json["year"],
        season: json["season"],
        rate: json["rate"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "image": image,
        "desc": desc,
        "match": match,
        "video": video,
        "subCategory": subCategory,
        "year": year,
        "season": season,
        "rate": rate,
      };
}
