import 'package:flutter/material.dart';

class Groceries extends StatelessWidget {
  Groceries(
      {super.key,
      required this.imageData,
      required this.tileColor,
      required this.name});
  Color tileColor;
  String imageData;
  String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: 80,
      width: 220,
      decoration: BoxDecoration(
          color: tileColor.withOpacity(0.20),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 14.0),
            child: Image.asset(
              imageData,
              height: 55,
            ),
          ),
          const SizedBox(
            width: 25,
          ),
          Text(
            name,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
