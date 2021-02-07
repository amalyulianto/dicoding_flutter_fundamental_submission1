// To parse this JSON data, do

// final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

// List<Article> parseArticles(String json) {
//   if (json == null) {
//     return [];
//   }

//   final List parsed = jsonDecode(json).toList();
//   return parsed.map((json) => Article.fromJson(json)).toList();
// }

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

class Welcome {
  Welcome({
    this.restaurants,
  });

  List<Restaurant> restaurants;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        restaurants: List<Restaurant>.from(
            json["restaurants"].map((x) => Restaurant.fromJson(x))),
      );
}

class Restaurant {
  Restaurant({
    this.id,
    this.name,
    this.description,
    this.pictureId,
    this.city,
    this.rating,
    this.menus,
  });

  String id;
  String name;
  String description;
  String pictureId;
  String city;
  double rating;
  Menus menus;

  factory Restaurant.fromJson(Map<String, dynamic> json) => Restaurant(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        pictureId: json["pictureId"],
        city: json["city"],
        rating: json["rating"].toDouble(),
        menus: Menus.fromJson(json["menus"]),
      );
}

class Menus {
  Menus({
    this.foods,
    this.drinks,
  });

  List<Drink> foods;
  List<Drink> drinks;

  factory Menus.fromJson(Map<String, dynamic> json) => Menus(
        foods: List<Drink>.from(json["foods"].map((x) => Drink.fromJson(x))),
        drinks: List<Drink>.from(json["drinks"].map((x) => Drink.fromJson(x))),
      );
}

class Drink {
  Drink({
    this.name,
  });

  String name;

  factory Drink.fromJson(Map<String, dynamic> json) => Drink(
        name: json["name"],
      );
}
