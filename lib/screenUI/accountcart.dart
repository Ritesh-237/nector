import 'package:flutter/material.dart';
import 'package:nector/screenUI/about_explorer.dart';
import 'package:nector/screenUI/delivery_address.dart';
import 'package:nector/screenUI/help_explorer.dart';
import 'package:nector/screenUI/my_detail_page.dart';
import 'package:nector/screenUI/orders_explorer.dart';
import 'package:nector/utility/colors.dart';

class Accountcart extends StatefulWidget {
  static const routeName = '/Accountcart';
  const Accountcart({super.key});

  @override
  State<Accountcart> createState() => _AccountcartState();
}

class _AccountcartState extends State<Accountcart> {
  bool isLoaded = false;
  double index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      const SizedBox(
        height: 50,
      ),
      Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.blue.shade100,
            child: InkWell(
              onTap: () {
                errorMessage(context);
              },
              child: const Icon(
                Icons.person,
                size: 40,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Text(
                    "User Name",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.edit,
                    color: Colors.green,
                    size: 20,
                  )
                ],
              ),
              const Text(
                "Email@email.com",
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ],
      ),
      const SizedBox(
        height: 20,
      ),
      Divider(
        thickness: 0.2,
        color: Colors.grey.shade600,
      ),
      InkWell(
        onTap: () {
          Navigator.pushNamed(context, Orders.routeName);
        },
        child: ListTile(
          leading: Icon(
            Icons.shopping_bag,
            size: 35,
            color: Colors.grey.shade800,
          ),
          title: const Text(
            "Orders",
            style: TextStyle(fontSize: 25),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.black,
            size: 30,
          ),
        ),
      ),
      Divider(
        thickness: 0.2,
        color: Colors.grey.shade600,
      ),
      InkWell(
        onTap: () {
          Navigator.pushNamed(context, MyDetail.routeName);
        },
        child: ListTile(
          leading: Icon(
            Icons.person,
            size: 35,
            color: Colors.grey.shade800,
          ),
          title: const Text(
            "My Details",
            style: TextStyle(fontSize: 22),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.black,
            size: 30,
          ),
        ),
      ),
      const Divider(thickness: 0.2, color: Colors.black),
      InkWell(
        onTap: () {
          Navigator.pushNamed(context, DeliveryAddress.routename);
        },
        child: ListTile(
          leading: Icon(
            Icons.location_on,
            size: 35,
            color: Colors.grey.shade800,
          ),
          title: const Text(
            "Delivery Address",
            style: TextStyle(fontSize: 22),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.black,
            size: 30,
          ),
        ),
      ),
      Divider(
        thickness: 0.2,
        color: Colors.grey.shade600,
      ),
      InkWell(
        onTap: () {
          Navigator.pushNamed(context, Help.routeName);
        },
        child: ListTile(
          leading: Icon(
            Icons.help,
            size: 35,
            color: Colors.grey.shade800,
          ),
          title: const Text(
            "Help",
            style: TextStyle(fontSize: 25),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.black,
            size: 30,
          ),
        ),
      ),
      Divider(
        thickness: 0.2,
        color: Colors.grey.shade600,
      ),
      InkWell(
        onTap: () {
          Navigator.pushNamed(context, About.routeName);
        },
        child: ListTile(
          leading: Icon(
            Icons.info,
            size: 35,
            color: Colors.grey.shade800,
          ),
          title: const Text(
            "About",
            style: TextStyle(fontSize: 25),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.black,
            size: 30,
          ),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Chip(
          elevation: 5,
          backgroundColor: AppColours.appwhite,
          avatar: Icon(
            Icons.logout,
            color: Colors.green,
          ),
          label: Text(
            "Log Out",
            style: TextStyle(color: Colors.green),
          ),
        ),
      ),
      // Slider(
      //     min: 0,
      //     max: 100,
      //     value: index,
      //     onChanged: (value) {
      //       setState(() {
      //         index = value;
      //       });
      //     }),
      // Text("volume :${index.round().toString()}")
    ]));
  }
}

errorMessage(BuildContext context) {
  return ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      duration: Duration(seconds: 1), content: Text("SomeThing Went Wrong")));
}
