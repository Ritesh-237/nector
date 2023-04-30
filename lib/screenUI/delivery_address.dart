// ignore_for_file: dead_code

import 'dart:developer';

import 'package:flutter/material.dart';

class DeliveryAddress extends StatefulWidget {
  const DeliveryAddress({super.key});

  @override
  State<DeliveryAddress> createState() => _DeliveryAddressState();
}

class _DeliveryAddressState extends State<DeliveryAddress> {
  ValueNotifier<int> selectedIndex = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.black,
            ),
          ),
          title: const Text(
            'Address',
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
        ),
        body: ValueListenableBuilder(
            valueListenable: selectedIndex,
            builder: (context, newValue, _) {
              log("message");
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    margin: const EdgeInsets.all(15),
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(Icons.add),
                          Text("Add New"),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              selectedIndex.value = 0;
                            },
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                      color: selectedIndex.value == 0
                                          ? Colors.green
                                          : Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(color: Colors.green)),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                RichText(
                                    text: const TextSpan(
                                        style: TextStyle(color: Colors.grey),
                                        children: [
                                      TextSpan(
                                          text: "Home\n",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black)),
                                      TextSpan(
                                          text:
                                              " 7th floor jade, J B Nagar,Andheri (E,Mumbai,\n"),
                                      TextSpan(text: "Maharashtra, 400059)\n"),
                                    ])),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        border: Border(bottom: BorderSide())),
                                    child: const Text(
                                      "Edit",
                                    ),
                                  )),
                              const SizedBox(
                                width: 20,
                              ),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        border: Border(bottom: BorderSide())),
                                    child: const Text(
                                      "Delete",
                                    ),
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Card(
                    elevation: 5,
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              selectedIndex.value = 1;
                            },
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                      color: selectedIndex.value == 1
                                          ? Colors.green
                                          : Colors.white,
                                      border: Border.all(color: Colors.green),
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                RichText(
                                    text: const TextSpan(
                                        style: TextStyle(color: Colors.grey),
                                        children: [
                                      TextSpan(
                                          text: "Home\n",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black)),
                                      TextSpan(
                                          text:
                                              " 7th floor jade, J B Nagar,Andheri (E,Mumbai,\n"),
                                      TextSpan(text: "Maharashtra, 400059)\n"),
                                    ])),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        border: Border(bottom: BorderSide())),
                                    child: const Text(
                                      "Edit",
                                    ),
                                  )),
                              const SizedBox(
                                width: 20,
                              ),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        border: Border(bottom: BorderSide())),
                                    child: const Text(
                                      "Delete",
                                    ),
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              );
            }));
  }
}
