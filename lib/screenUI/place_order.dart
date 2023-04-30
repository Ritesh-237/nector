import 'package:flutter/material.dart';
import 'package:nector/utility/colors.dart';
import 'package:nector/utility/images.dart';

class Placeorder extends StatelessWidget {
  const Placeorder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 220,
          ),
          Center(
            child: Image.asset(
              GroceryImages.orderconfirmedImage,
              fit: BoxFit.cover,
              height: 170,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "Your Order has been Accepted",
            style: TextStyle(color: Colors.black, fontSize: 27),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              "Your Items has been placed and is on it's way to being processed",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          InkWell(
            onTap: () {
              showDialogueBox(context: context);
            },
            child: Container(
              height: 60,
              width: 350,
              decoration: BoxDecoration(
                  color: AppColours.primarycolour,
                  borderRadius: BorderRadius.circular(15)),
              child: const Center(
                  child: Text(
                "Track Order",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Text(
              "Back to Home",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}

showDialogueBox({required BuildContext context}) {
  AlertDialog alert = AlertDialog(
    contentPadding: EdgeInsets.zero,
    insetPadding: EdgeInsets.zero,
    title: Row(
      children: [
        InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.close)),
      ],
    ),
    content: SizedBox(
      width: MediaQuery.of(context).size.width * 0.80,
      height: MediaQuery.of(context).size.height * 0.50,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            GroceryImages.bakeryImage,
            height: 150,
            fit: BoxFit.contain,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Oops! order Failed",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          const SizedBox(
            height: 7,
          ),
          const Text(
            "something went tembly wrong.",
            style: TextStyle(color: Colors.grey, fontSize: 17),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 60,
            width: 290,
            decoration: BoxDecoration(
                color: AppColours.primarycolour,
                borderRadius: BorderRadius.circular(20)),
            child: const Center(
              child: Text(
                "Please Try Again",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Text(
              "Back To Home",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    ),
  );
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) {
      return alert;
    },
  );
}
