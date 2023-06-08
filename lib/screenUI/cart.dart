import 'package:flutter/material.dart';
import 'package:nector/screenUI/place_order.dart';
import 'package:nector/utility/colors.dart';
import 'package:nector/utility/data.dart';
import 'package:nector/widgets/new_cart_product_tile.dart';

class Cart extends StatelessWidget {
  static const routeName = '/Cart';
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: InkWell(
        onTap: () {
          showModalBottomSheet(
            context: context,
            backgroundColor: Colors.white,
            isScrollControlled: true,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
            builder: (context) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 16.0),
                        child: Text(
                          "Checkout",
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.close,
                          color: Colors.black,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    child: Divider(
                      color: Colors.black26,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Delivery",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                      Row(
                        children: const [
                          Text(
                            "Select Method",
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 14.0),
                    child: Divider(
                      color: Colors.black26,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Payment",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                      const SizedBox(
                        width: 200,
                      ),
                      Container(
                        height: 20,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(5)),
                        child: const Center(
                            child: Text(
                          "₹",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 25,
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 14.0),
                    child: Divider(
                      color: Colors.black26,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Promocode",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                      SizedBox(
                        width: 130,
                      ),
                      Text("Pick discount"),
                      Icon(
                        Icons.close,
                        color: Colors.grey,
                        size: 25,
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 14.0),
                    child: Divider(
                      color: Colors.black26,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Total Cost ",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                      SizedBox(
                        width: 170,
                      ),
                      Text("\$13.97"),
                      Icon(
                        Icons.close,
                        color: Colors.grey,
                        size: 25,
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 14.0),
                    child: Divider(
                      color: Colors.black26,
                    ),
                  ),
                  const Text(
                    "By placing an order you agree to \nour Terms And Conditions  ",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: (() {
                      Navigator.pushNamed(context, Placeorder.routeName);
                    }),
                    child: Container(
                      height: 50,
                      width: 320,
                      decoration: BoxDecoration(
                          color: AppColours.primarycolour,
                          borderRadius: BorderRadius.circular(15)),
                      child: const Center(
                          child: Text(
                        "Place Order",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          );
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  height: 60,
                  width: MediaQuery.of(context).size.width * 0.90,
                  decoration: BoxDecoration(
                      color: AppColours.primarycolour,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                    child: Text(
                      "Go To Checkout",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
          ],
        ),
      ),
      backgroundColor: AppColours.appwhite,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColours.appwhite,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "My Cart",
          style: TextStyle(color: Colors.black87, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(children: [
          const Divider(color: Colors.grey),
          const SizedBox(
            height: 10,
          ),
          Expanded(
              child: ListView.builder(
                  // shrinkWrap: true,
                  itemCount: 20,
                  itemBuilder: (context, index) => Cartview(
                        imgData: getBestSellingImages[index],
                        namesdata: vegetableNames[index],
                      ))),
          const SizedBox(
            height: 60,
          )
        ]),
      ),
    );
  }
}
