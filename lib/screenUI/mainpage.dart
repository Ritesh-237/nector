import 'package:flutter/material.dart';
import 'package:nector/utility/colors.dart';
import 'package:nector/utility/images.dart';
import 'package:nector/widgets/fruits_card.dart';
import 'package:nector/widgets/groceries_card.dart';
import 'package:scroll_page_view/scroll_page.dart';

import '../utility/data.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController phonecontroller = TextEditingController();
  double index = 0;
  showErrorToast(BuildContext context) {
    return ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("Something Went Wrong"),
      duration: Duration(seconds: 1),
    ));
  }

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
              Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    controller: phonecontroller,
                    decoration: const InputDecoration(
                        hintText: "Search for your product",
                        border:
                            OutlineInputBorder(borderSide: BorderSide.none)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  height: 120,
                  child: ScrollPageView(
                    delay: const Duration(seconds: 3),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Exclusive Offers",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showErrorToast(context);
                      },
                      child: const Text(
                        "see all",
                        style: TextStyle(
                            color: AppColours.primarycolour, fontSize: 15),
                      ),
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
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 12.0),
                    child: Text(
                      "Best Selling",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  const SizedBox(
                    width: 170,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6.0),
                    child: InkWell(
                      onTap: () {
                        showErrorToast(context);
                      },
                      child: const Text(
                        "See all",
                        style: TextStyle(color: AppColours.primarycolour),
                      ),
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
                  itemCount: offerImages.length,
                  itemBuilder: ((context, index) => OfferBox(
                        imgData: offerImages[index],
                        productName: offerProductNames[index],
                        quantity: offerQuantities[index],
                      )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Row(
                  children: [
                    const Text(
                      "Groceries",
                      style: TextStyle(fontSize: 30),
                    ),
                    const SizedBox(
                      width: 170,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6.0),
                      child: InkWell(
                        onTap: () {
                          showErrorToast(context);
                        },
                        child: const Text(
                          "See all",
                          style: TextStyle(color: AppColours.primarycolour),
                        ),
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
                        imgData: getBestSellingImages[index],
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
