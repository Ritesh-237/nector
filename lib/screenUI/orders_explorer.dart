import 'package:flutter/material.dart';

class Orders extends StatelessWidget {
  const Orders({super.key});
  showErrorToast(BuildContext context) {
    return ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("Sorry, Something went Wrong"),
      duration: Duration(seconds: 1),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  size: 30,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                "Orders",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.black45,
          ),
          ListTile(
            leading: Image.asset("lib/assets/images/order_confirmed.png"),
            title: const Text("Order Delivered"),
            subtitle: RichText(
                text: const TextSpan(
                    style: TextStyle(color: Colors.grey),
                    children: [
                  TextSpan(text: "2 items\n"),
                  TextSpan(text: "order ID\n"),
                  TextSpan(text: "SD6F5GDF6G54DF6GDF5G4\n"),
                ])),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  "\$1.40",
                  style: TextStyle(color: Colors.black, fontSize: 17),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                )
              ],
            ),
          ),
          const Divider(
            color: Colors.black45,
          ),
          InkWell(
            onTap: () {
              showErrorToast(context);
            },
            child: ListTile(
              leading: Image.asset("lib/assets/images/order_failed_icon.png"),
              title: const Text("Order Delivered"),
              subtitle: RichText(
                  text: const TextSpan(
                      style: TextStyle(color: Colors.grey),
                      children: [
                    TextSpan(text: "4 items\n"),
                    TextSpan(text: "order ID\n"),
                    TextSpan(text: "SD6F5GDF6G54DF6GDF5G4\n"),
                  ])),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    "\$1.40",
                    style: TextStyle(color: Colors.black, fontSize: 17),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  )
                ],
              ),
            ),
          ),
          const Divider(
            color: Colors.black45,
          ),
        ],
      ),
    );
  }
}
