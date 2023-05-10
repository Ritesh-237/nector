import 'package:flutter/material.dart';
import 'package:nector/utility/colors.dart';

class FavouriteTile extends StatelessWidget {
  const FavouriteTile({super.key, required this.image, required this.name});
  final String image;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Divider(),
      ListTile(
        leading: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
        title: Text(
          name,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: const Text(
          "325ml, Price",
          style: TextStyle(
            fontSize: 15,
            color: AppColours.apptextgrey,
          ),
        ),
        trailing: const Text(
          "\$1.50  >",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    ]);
  }
}
