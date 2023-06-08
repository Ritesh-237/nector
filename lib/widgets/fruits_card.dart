import 'package:flutter/material.dart';
import 'package:nector/utility/colors.dart';

class OfferBox extends StatelessWidget {
  const OfferBox(
      {required this.imgData,
      required this.productName,
      required this.quantity,
      super.key});

  final String imgData;
  final String productName;
  final String quantity;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: 160,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: AppColours.appwhite,
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 100,
                child: Image.asset(
                  imgData,
                ),
              )),
          const SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              productName,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text(
              quantity,
              style: const TextStyle(color: Colors.grey),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 12.0),
                child: Text(
                  "\$4.99",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(12)),
                  child: const Center(
                    // child: GestureDetector(
                    //   onTap: () {
                    //     Navigator.push(
                    //         context,
                    //         MaterialPageRoute(
                    //             builder: ((context) => const Api())));
                    //   },
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      // ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
