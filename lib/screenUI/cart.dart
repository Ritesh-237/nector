import 'package:flutter/material.dart';
import 'package:nector/screenUI/place_order.dart';
import 'package:nector/utility/colors.dart';
import 'package:nector/utility/screen_util.dart';

class Cart extends StatelessWidget {
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
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Checkout",
                        style: TextStyle(fontSize: 25),
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
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    color: Colors.black26,
                  ),
                  const SizedBox(
                    height: 10,
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
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.arrow_forward_ios_outlined),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    color: Colors.black26,
                  ),
                  const SizedBox(
                    height: 10,
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
                        decoration: const BoxDecoration(color: Colors.black),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 25,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    color: Colors.black26,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Promocode",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                      SizedBox(
                        width: 140,
                      ),
                      Text("Pick discount"),
                      Icon(
                        Icons.close,
                        color: Colors.black,
                        size: 25,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    color: Colors.black26,
                  ),
                  const SizedBox(
                    height: 10,
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
                        color: Colors.black,
                        size: 25,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    color: Colors.black26,
                  ),
                  const Text(
                    "By placing an order you agree to our Terms And Conditions  ",
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: (() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const Placeorder())));
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
                  itemCount: 10,
                  itemBuilder: (context, index) => const Cartview()))
        ]),
      ),
    );
  }
}

class Cartview extends StatefulWidget {
  const Cartview({super.key});

  @override
  State<Cartview> createState() => _CartviewState();
}

class _CartviewState extends State<Cartview> {
  int price = 0;
  @override
  Widget build(BuildContext context) {
    return (Column(children: [
      SizedBox(
        height: 20.toHeight,
      ),
      ListTile(
        leading: Image.asset("lib/assets/images/capcicum.png"),
        title: Row(
          children: [
            RichText(
                text: TextSpan(
                    style: const TextStyle(color: Colors.black),
                    children: [
                  TextSpan(
                      text: "Bell Pepper Red\n",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.toFont)),
                  const TextSpan(text: "1kg,price"),
                ])),
          ],
        ),
        subtitle: Padding(
          padding: EdgeInsets.only(top: 8.0.toHeight),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    price--;
                  });
                },
                child: Container(
                  height: 25.toWidth,
                  width: 25.toWidth,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(7)),
                  child: Center(
                    child: Icon(Icons.minimize, size: 18.toWidth),
                  ),
                ),
              ),
              SizedBox(
                width: 15.toWidth,
              ),
              Text(
                "$price",
                style: TextStyle(fontSize: 20.toFont),
              ),
              SizedBox(
                width: 15.toWidth,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    price++;
                  });
                },
                child: Container(
                  height: 25.toWidth,
                  width: 25.toWidth,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(7)),
                  child: Center(
                    child: Icon(Icons.add, size: 18.toWidth),
                  ),
                ),
              ),
            ],
          ),
        ),
        trailing: Column(
          children: [
            const Icon(Icons.close),
            const SizedBox(
              height: 10,
            ),
            Text("RS ₹ ${price == 0 ? 40 : 40 * price}")
          ],
        ),
      )
    ]));
  }
}
