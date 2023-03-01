import 'dart:convert';

Actors actorsFromJson(String str) => Actors.fromJson(json.decode(str));

String actorsToJson(Actors data) => json.encode(data.toJson());

class Actors {
  Actors({
    required this.actors,
  });

  final List<Actor> actors;

  factory Actors.fromJson(Map<String, dynamic> json) => Actors(
        actors: List<Actor>.from(json["actors"].map((x) => Actor.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "actors": List<dynamic>.from(actors.map((x) => x.toJson())),
      };
}

class Actor {
  Actor({
    required this.id,
    required this.name,
    required this.image,
  });

  final int id;
  final String name;
  final String image;

  factory Actor.fromJson(Map<String, dynamic> json) => Actor(
        id: json["id"],
        name: json["name"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
      };
}
