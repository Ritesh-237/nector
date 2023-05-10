import 'package:flutter/material.dart';
import 'package:nector/screenUI/apicall.dart';
import 'package:nector/utility/colors.dart';
import 'package:nector/utility/images.dart';
import 'package:scroll_page_view/scroll_page.dart';

import '../utility/data.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColours.groceryRiceColor.withOpacity(0.70),
        automaticallyImplyLeading: false,
        title: const Text("Nector Online Grocery",
            style: TextStyle(
              color: AppColours.appwhite,
            )),
        actions: const [Icon(Icons.more_vert)],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Search for your product",
                      border: OutlineInputBorder(borderSide: BorderSide.none)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  height: 120,
                  child: ScrollPageView(
                    delay: const Duration(seconds: 5),
                    checkedIndicatorColor: Colors.green,
                    indicatorColor: Colors.grey,
                    scrollDirection: Axis.horizontal,
                    controller: ScrollPageController(),
                    children: [
                      Image.asset(
                        GroceryImages.bannerImage,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        GroceryImages.bannerImage,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        GroceryImages.bannerImage,
                        height: 120,
                        fit: BoxFit.cover,
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    // ignore: prefer_const_constructors
                    Text(
                      "Exclusive Offers",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      "see all",
                      style: TextStyle(
                          color: AppColours.primarycolour, fontSize: 15),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 260,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: ((context, index) => OfferBox(
                        imgData: offerImages[index],
                        productName: offerProductNames[index],
                        quantity: offerQuantities[index],
                      )),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 12.0),
                    child: Text(
                      "Best Selling",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  SizedBox(
                    width: 170,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 6.0),
                    child: Text(
                      "See all",
                      style: TextStyle(color: AppColours.primarycolour),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 260,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: ((context, index) => OfferBox(
                        imgData: bestSellingImages[index],
                        productName: bestProductNames[index],
                        quantity: bestQuantities[index],
                      )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Row(
                  children: const [
                    Text(
                      "Groceries",
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(
                      width: 170,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 6.0),
                      child: Text(
                        "See all",
                        style: TextStyle(color: AppColours.primarycolour),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) => Groceries(
                    imageData: groceriesImages[index],
                    tileColor: groceriesTileColor[index],
                    name: groceriesName[index],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 260,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: ((context, index) => OfferBox(
                        imgData: bestSellingImages[index],
                        productName: bestProductNames[index],
                        quantity: bestQuantities[index],
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const Api())));
                      },
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
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
