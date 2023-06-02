import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:nector/models/fruit_data_response.dart';

class FruitApi extends StatefulWidget {
  const FruitApi({super.key});

  @override
  State<FruitApi> createState() => _FruitApiState();
}

class _FruitApiState extends State<FruitApi> {
  late List<FruitDataResponse> fruitsData;
  bool isLoaded = false;
  List fruitsName = [];
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      getData().then((value) {
        for (int i = 0; i < value.length; i++) {
          fruitsName.add(value[i].name);
        }
        setState(() {
          isLoaded = true;
          fruitsData = value;
        });
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Api Test"),
          centerTitle: true,
        ),
        backgroundColor: Colors.green,
        body: isLoaded
            ? ListView.builder(
                shrinkWrap: true,
                itemCount: fruitsData.length,
                itemBuilder: (context, index) => ListTile(
                      leading: Text(fruitsName[index]),
                      title: Text(fruitsData[index].id.toString()),
                      trailing: Text(
                          fruitsData[index].nutritions.calories.toString()),
                    ))
            : const Center(
                child: CircularProgressIndicator(),
              ));
  }
}

Future<List<FruitDataResponse>> getData() async {
  final response =
      await http.get(Uri.parse("https://www.fruityvice.com/api/fruit/all"));
  try {
    if (response.statusCode == 200) {
      List<FruitDataResponse> fruitData = quickResponseFromJson(response.body);
      return fruitData;
    } else {
      throw AppException("something went wrong");
    }
  } catch (e) {
    throw AppException(e.toString());
  }
}

class AppException implements Exception {
  String message;
  AppException(this.message);
}
