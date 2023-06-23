import 'package:flutter/material.dart';
import 'package:nector/utility/screen_util.dart';

class Cartview extends StatefulWidget {
  const Cartview({super.key, required this.imgData, required this.namesdata});
  final String imgData;
  final String namesdata;
  @override
  State<Cartview> createState() => _CartviewState();
}

class _CartviewState extends State<Cartview> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return (Column(children: [
      SizedBox(
        height: 10.toHeight,
      ),
      ListTile(
        leading: Image.asset(widget.imgData),
        title: Row(
          children: [
            RichText(
                text: TextSpan(
                    style: const TextStyle(color: Colors.black),
                    children: [
                  TextSpan(
                      text: "${widget.namesdata}\n",
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
                  if (number >= 1) {
                    setState(() {
                      number--;
                    });
                  }
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
                "$number kg",
                style: TextStyle(fontSize: 20.toFont),
              ),
              SizedBox(
                width: 15.toWidth,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    number++;
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
            Text("RS ₹ ${number == 0 ? 40 : 40 * number}")
          ],
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      const Divider(
        color: Colors.black54,
      ),
    ]));
  }
}
