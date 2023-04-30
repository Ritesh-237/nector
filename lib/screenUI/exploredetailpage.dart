import 'package:flutter/material.dart';
import 'package:nector/utility/colors.dart';
import 'package:nector/utility/images.dart';

class SearchExplorer extends StatelessWidget {
  const SearchExplorer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColours.appwhite,
      appBar: AppBar(
        backgroundColor: AppColours.appwhite,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
          color: AppColours.appblack,
        ),
        centerTitle: true,
        title: const Text(
          "Find Products",
          style: TextStyle(color: AppColours.appblack),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Icon(
              Icons.tune,
              color: AppColours.appblack,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: GridView.count(
          childAspectRatio: 0.8,
          mainAxisSpacing: 15,
          crossAxisSpacing: 12,
          crossAxisCount: 2,
          children: List.generate(
            10,
            (index) => Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 225,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: AppColours.apptextgrey.withOpacity(0.30)),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset(GroceryImages.beveragesImage),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Organic Beverage",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: const [
                      Text(
                        "7pcs,priceg",
                        style: TextStyle(color: AppColours.apptextgrey),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("\$4.99"),
                        // const SizedBox(
                        //   width: 70,
                        // ),
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              color: AppColours.primarycolour,
                              borderRadius: BorderRadius.circular(12)),
                          child: const Center(
                            child: Text(
                              "+",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

abstract class CustomStatefulClass {
  Widget build(BuildContext context);
}

class FirstPage extends CustomStatefulClass {
  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
