import 'package:flutter/material.dart';
class GroceriesTile extends StatelessWidget {
  GroceriesTile({required this.label, required this.image, required this.color});

  Color color;
  String label;
  String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.10,
      width: MediaQuery.of(context).size.width * 0.65,
      decoration: BoxDecoration(
        color: color.withOpacity(0.55),
        borderRadius: BorderRadius.circular(10),
        ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(image),
          Text(label, style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),)
        ],
      ),
    );
  }
}
