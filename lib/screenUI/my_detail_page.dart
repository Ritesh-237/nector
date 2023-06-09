import 'package:flutter/material.dart';
import 'package:nector/utility/colors.dart';

class MyDetail extends StatelessWidget {
  const MyDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new_sharp,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "Detail",
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(
              color: Colors.black45,
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              "lib/assets/images/profile.png",
              height: 150,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Customer Name",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Card(
                  elevation: 2,
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border:
                            OutlineInputBorder(borderSide: BorderSide.none)),
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Card(
                  elevation: 2,
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border:
                            OutlineInputBorder(borderSide: BorderSide.none)),
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Card(
                  elevation: 2,
                  child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 16.0),
                              child: Text("+91"),
                            ),
                            Icon(
                              Icons.flag,
                              color: Colors.green,
                            )
                          ],
                        ),
                        fillColor: Colors.black,
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none)),
                  )),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  color: AppColours.primarycolour,
                  borderRadius: BorderRadius.circular(8)),
              child: const Center(
                  child: Text(
                "Save Changes",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
