import 'package:flutter/material.dart';
import 'package:nector/screenUI/about_explorer.dart';
import 'package:nector/screenUI/delivery_address.dart';
import 'package:nector/screenUI/help_explorer.dart';
import 'package:nector/screenUI/my_detail_page.dart';
import 'package:nector/screenUI/orders_explorer.dart';

class Accountcart extends StatefulWidget {
  const Accountcart({super.key});

  @override
  State<Accountcart> createState() => _AccountcartState();
}

class _AccountcartState extends State<Accountcart> {
  bool isLoaded = false;
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
            child: const Icon(
              Icons.person,
              size: 40,
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
          Navigator.push(context,
              MaterialPageRoute(builder: ((context) => const Orders())));
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
        color: Colors.grey.shade600,
      ),
      InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: ((context) => const MyDetail())));
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
      Divider(
        color: Colors.grey.shade600,
      ),
      InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const DeliveryAddress()));
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
        color: Colors.grey.shade600,
      ),
      InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: ((context) => const Help())));
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
        color: Colors.grey.shade600,
      ),
      InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: ((context) => const About())));
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
      const Card()
    ]));
  }
}
