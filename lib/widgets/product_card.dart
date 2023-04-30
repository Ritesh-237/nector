import 'package:flutter/material.dart';
import 'package:nector/utility/colors.dart';

class ProductCard extends StatelessWidget {
  ProductCard(
      {super.key,
      required this.productImage,
      required this.productName,
      required this.productQuantity});

  String productImage;
  String productName;
  String productQuantity;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.45,
      width: MediaQuery.of(context).size.width * 0.50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(width: 1, color: AppColours.containerbordergrey)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Image.asset(productImage),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Text(
              productName,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            productQuantity,
            style: const TextStyle(color: AppColours.apptextgrey),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "\$2.99",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(width: 30),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColours.primarycolour),
                  child: const Icon(Icons.add, color: Colors.white),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
