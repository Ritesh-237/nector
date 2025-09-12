// To parse this JSON data, do
//
//     final quickResponse = quickResponseFromJson(jsonString);

import 'dart:convert';

List<FruitDataResponse> quickResponseFromJson(String str) =>
    List<FruitDataResponse>.from(
        json.decode(str).map((x) => FruitDataResponse.fromJson(x)));

String quickResponseToJson(List<FruitDataResponse> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FruitDataResponse {
  final String name;
  final int id;
  final String family;
  final String order;
  final String genus;
  final Nutritions nutritions;

  FruitDataResponse({
    required this.name,
    required this.id,
    required this.family,
    required this.order,
    required this.genus,
    required this.nutritions,
  });

  factory FruitDataResponse.fromJson(Map<String, dynamic> json) =>
      FruitDataResponse(
        name: json["name"],
        id: json["id"],
        family: json["family"],
        order: json["order"],
        genus: json["genus"],
        nutritions: Nutritions.fromJson(json["nutritions"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "id": id,
        "family": family,
        "order": order,
        "genus": genus,
        "nutritions": nutritions.toJson(),
      };
}

class Nutritions {
  final int calories;
  final double fat;
  final double sugar;
  final double carbohydrates;
  final double protein;

  Nutritions({
    required this.calories,
    required this.fat,
    required this.sugar,
    required this.carbohydrates,
    required this.protein,
  });

  factory Nutritions.fromJson(Map<String, dynamic> json) => Nutritions(
        calories: json["calories"],
        fat: json["fat"]?.toDouble(),
        sugar: json["sugar"]?.toDouble(),
        carbohydrates: json["carbohydrates"]?.toDouble(),
        protein: json["protein"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "calories": calories,
        "fat": fat,
        "sugar": sugar,
        "carbohydrates": carbohydrates,
        "protein": protein,
      };
}
