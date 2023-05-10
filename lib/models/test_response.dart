// To parse this JSON data, do
//
//     final testResponse = testResponseFromJson(jsonString);

import 'dart:convert';

List<TestResponse> testResponseFromJson(String str) => List<TestResponse>.from(
    json.decode(str).map((x) => TestResponse.fromJson(x)));

String testResponseToJson(List<TestResponse> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TestResponse {
  final int userId;
  final int id;
  final String title;
  final String body;

  TestResponse({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory TestResponse.fromJson(Map<String, dynamic> json) => TestResponse(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}
