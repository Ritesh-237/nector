import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:nector/models/test_response.dart';

class Api extends StatefulWidget {
  const Api({super.key});

  @override
  State<Api> createState() => _ApiState();
}

class _ApiState extends State<Api> {
  bool isLoaded = false;
  QuickResponse? quickResponse;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      getdata().then((value) {
        if (value != null) {
          setState(() {
            isLoaded = true;
          });
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Api Test"),
        ),
        body: isLoaded
            ? SingleChildScrollView(
                child: Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: quickResponse!.articles.length,
                      itemBuilder: (BuildContext context, int index) => ApiCard(
                        title: quickResponse!.articles[index].title ?? "",
                        imageData:
                            quickResponse!.articles[index].urlToImage ?? "",
                        description: quickResponse!.articles[index].description,
                        publishedAt:
                            "${quickResponse!.articles[index].publishedAt.toString().split(":")[0]}:${quickResponse!.articles[index].publishedAt.toString().split(":")[1]}",
                      ),
                    ),
                  ],
                ),
              )
            : const Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              ));
  }

  Future<QuickResponse?> getdata() async {
    final response = await http.get(Uri.parse(
        "https://newsapi.org/v2/everything?q=te&from=2023-05-01&sortBy=publishedAt&apiKey=1caacd9b00d5472aa35a2f2712cbd9b0"));
    try {
      if (response.statusCode == 200) {
        quickResponse = QuickResponse.fromJson(jsonDecode(response.body));

        return quickResponse;
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}

class ApiCard extends StatelessWidget {
  const ApiCard(
      {super.key,
      required this.title,
      required this.imageData,
      required this.description,
      required this.publishedAt});

  final String title;
  final String imageData;
  final String description;
  final String publishedAt;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
              ),
              color: Colors.white),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                ),
              ),
              Image.network(imageData),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(description),
              ),
              Text(publishedAt),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
