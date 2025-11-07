import 'package:flutter/material.dart';
import 'package:nector/screenUI/about_explorer.dart';
import 'package:nector/screenUI/delivery_address.dart';
import 'package:nector/screenUI/help_explorer.dart';
import 'package:nector/screenUI/my_detail_page.dart';
import 'package:nector/screenUI/orders_explorer.dart';

class Accountcart extends StatelessWidget {
  static const routeName = '/Accountcart';
  const Accountcart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),

            // Profile section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.blue.shade100,
                    child: InkWell(
                      onTap: () => errorMessage(context),
                      child: const Icon(Icons.person, size: 40),
                    ),
                  ),
                  const SizedBox(width: 16),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "User Name",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 6),
                            Icon(Icons.edit, color: Colors.green, size: 18),
                          ],
                        ),
                        Text(
                          "Email@email.com",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

            const SizedBox(height: 20),
            Divider(color: Colors.grey.shade400),

            // Menu List
            Expanded(
              child: ListView(
                children: [
                  _buildMenuItem(
                    context,
                    icon: Icons.shopping_bag,
                    title: "Orders",
                    routeName: Orders.routeName,
                  ),
                  _buildMenuItem(
                    context,
                    icon: Icons.person,
                    title: "My Details",
                    routeName: MyDetail.routeName,
                  ),
                  _buildMenuItem(
                    context,
                    icon: Icons.location_on,
                    title: "Delivery Address",
                    routeName: DeliveryAddress.routename,
                  ),
                  _buildMenuItem(
                    context,
                    icon: Icons.help,
                    title: "Help",
                    routeName: Help.routeName,
                  ),
                  _buildMenuItem(
                    context,
                    icon: Icons.info,
                    title: "About",
                    routeName: About.routeName,
                  ),

                  const SizedBox(height: 30),

                  // Logout Button
                  Center(
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.green,
                        padding: const EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 20,
                        ),
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.logout),
                      label: const Text("Log Out"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context,
      {required IconData icon,
      required String title,
      required String routeName}) {
    return ListTile(
      leading: Icon(icon, size: 28, color: Colors.grey.shade800),
      title: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      ),
      trailing:
          const Icon(Icons.arrow_forward_ios, size: 18, color: Colors.grey),
      onTap: () => Navigator.pushNamed(context, routeName),
    );
  }
}

errorMessage(BuildContext context) {
  return ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      duration: Duration(seconds: 1),
      content: Text("Something went wrong"),
    ),
  );
}
