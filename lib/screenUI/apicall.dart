import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api extends StatefulWidget {
  const Api({super.key});

  @override
  State<Api> createState() => _ApiState();
}

class _ApiState extends State<Api> {
  @override
  void initState() {
    super.initState();

    TestReponse(title: "Abhishek", body: "Fair", userId: 457, id: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Api Test"),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.white,
      body: FutureBuilder(
          future: getdata(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (context, index) {
                  TestReponse testReponse = snapshot.data![index];

                  return Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    color: Colors.greenAccent,
                    height: 120,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "User title:${testReponse.title}",
                          style: const TextStyle(fontSize: 18),
                        ),
                        Text(
                          "id:${testReponse.id}",
                          style: const TextStyle(fontSize: 18),
                        )
                        // ),
                        // Text(
                        //   maxLines: 1,
                        //   "Title:${testResponse.title}",
                        //   style: const TextStyle(fontSize: 18),
                        // ),
                        // Text(
                        //   maxLines: 1,
                        //   "Body:${testResponse.body}",
                        //   style: const TextStyle(fontSize: 18),
                        // ),
                      ],
                    ),
                  );
                },
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }

  Future<List<TestReponse>?> getdata() async {
    final response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));

    if (response.statusCode == 200) {
      List<TestReponse> result = [];

      List<dynamic> listMap = jsonDecode(response.body);

      for (int i = 0; i < listMap.length; i++) {
        Map<String, dynamic> map = listMap[i] as Map<String, dynamic>;
        result.add(TestReponse(
            body: map['body'],
            id: map['id'],
            title: map['title'],
            userId: map['userId']));
      }

      return result;
    } else {
      return null;
    }
  }
}

class TestResponseModel {
  List<TestReponse> result;

  TestResponseModel({required this.result});
}

class TestReponse {
  String? title;
  String? body;
  int? userId;
  int? id;

  TestReponse(
      {required this.title,
      required this.body,
      required this.userId,
      required this.id});
}
