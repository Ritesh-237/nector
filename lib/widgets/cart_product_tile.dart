import 'package:flutter/material.dart';
import 'package:nector/utility/colors.dart';
import 'package:nector/utility/images.dart';

class CartTile extends StatelessWidget {
  const CartTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(GroceryImages.pepsiImage),
          // ignore: prefer_const_literals_to_create_immutables
          Column(children: [
            const Text("Pepsi",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "1kg,Price",
              style: TextStyle(fontSize: 14, color: AppColours.apptextgrey),
            )
          ]),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(
                Icons.close,
                size: 20,
                color: AppColours.apptextgrey,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "\$4.99",
                style: TextStyle(fontSize: 20),
              ),
              Divider(
                thickness: 1,
              )
            ],
          )
        ],
      ),
    );
  }
}
