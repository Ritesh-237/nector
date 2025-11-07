import 'package:flutter/material.dart';
import 'package:nector/utility/colors.dart';
import 'package:nector/utility/images.dart';
import 'package:nector/widgets/fruits_card.dart';
import 'package:nector/widgets/groceries_card.dart';
import 'package:scroll_page_view/scroll_page.dart';

import '../utility/data.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  static const routeName = '/mainPage';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final TextEditingController phonecontroller = TextEditingController();
  double index = 0;

  void showErrorToast(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Coming soon 🚀"),
        duration: Duration(seconds: 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColours.groceryRiceColor.withOpacity(0.70),
        automaticallyImplyLeading: false,
        title: const Text(
          "Nector Online Grocery",
          style: TextStyle(
            color: AppColours.appwhite,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: const [Icon(Icons.more_vert)],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: screenHeight * 0.03),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    controller: phonecontroller,
                    decoration: const InputDecoration(
                      hintText: "Search for your product",
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(screenWidth * 0.03),
                child: SizedBox(
                  height: screenHeight * 0.18,
                  child: ScrollPageView(
                    delay: const Duration(seconds: 3),
                    checkedIndicatorColor: Colors.green,
                    indicatorColor: Colors.grey,
                    scrollDirection: Axis.horizontal,
                    controller: ScrollPageController(),
                    children: [
                      Image.asset(GroceryImages.bannerImage, fit: BoxFit.cover),
                      Image.asset(GroceryImages.bannerImage, fit: BoxFit.cover),
                      Image.asset(GroceryImages.bannerimage, fit: BoxFit.cover),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(screenWidth * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Exclusive Offers",
                        style: TextStyle(fontSize: screenWidth * 0.06)),
                    InkWell(
                      onTap: () => showErrorToast(context),
                      child: Text("See all",
                          style: TextStyle(
                              color: AppColours.primarycolour,
                              fontSize: screenWidth * 0.04)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.32,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) => OfferBox(
                    imgData: offerImages[index],
                    productName: offerProductNames[index],
                    quantity: offerQuantities[index],
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.03),
                    child: Text(
                      "Best Selling",
                      style: TextStyle(fontSize: screenWidth * 0.06),
                    ),
                  ),
                  InkWell(
                    onTap: () => showErrorToast(context),
                    child: Text("See all",
                        style: TextStyle(
                            color: AppColours.primarycolour,
                            fontSize: screenWidth * 0.04)),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.02),
              SizedBox(
                height: screenHeight * 0.35,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: offerImages.length,
                  itemBuilder: (context, index) => OfferBox(
                    imgData: offerImages[index],
                    productName: offerProductNames[index],
                    quantity: offerQuantities[index],
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Groceries",
                        style: TextStyle(fontSize: screenWidth * 0.07)),
                    InkWell(
                      onTap: () => showErrorToast(context),
                      child: Text("See all",
                          style: TextStyle(
                              color: AppColours.primarycolour,
                              fontSize: screenWidth * 0.04)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              SizedBox(
                height: screenHeight * 0.12,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: groceriesImages.length,
                  itemBuilder: (context, index) => Groceries(
                    imageData: groceriesImages[index],
                    tileColor: groceriesTileColor[index],
                    name: groceriesName[index],
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.04),
              SizedBox(
                height: screenHeight * 0.35,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: bestProductNames.length,
                  itemBuilder: (context, index) => OfferBox(
                    imgData: getBestSellingImages[index],
                    productName: bestProductNames[index],
                    quantity: bestQuantities[index],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
