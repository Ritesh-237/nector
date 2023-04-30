import 'package:flutter/material.dart';
import 'package:nector/utility/data.dart';

class FavouriteCart extends StatelessWidget {
  const FavouriteCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            "Favourite",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: ListView.builder(
          itemCount: favouriteImages.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) => Favourite(
            name: favouriteNames[index],
            imgData: favouriteImages[index],
          ),
        ));
  }
}

class Favourite extends StatelessWidget {
  Favourite({super.key, required this.name, required this.imgData});
  String name;
  String imgData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // const SizedBox(
        //   height: 10,
        // ),
        const Divider(
          color: Colors.black87,
        ),
        ListTile(
          leading: SizedBox(
            width: 55,
            child: Image.asset(
              imgData,
            ),
          ),
          title: Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: const Text("325ml,price"),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text(
                "\$1.50",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                size: 20,
              )
            ],
          ),
        ),
      ],
    );
  }
}
