import 'package:flutter/material.dart';
import 'package:nector/screenUI/accountcart.dart';
import 'package:nector/screenUI/cart.dart';
import 'package:nector/screenUI/explore_page.dart';
import 'package:nector/screenUI/favourite.dart';
import 'package:nector/screenUI/mainpage.dart';
import 'package:nector/utility/colors.dart';

class RootNavigator extends StatefulWidget {
  const RootNavigator({super.key});

  @override
  State<RootNavigator> createState() => _RootNavigatorState();
}

class _RootNavigatorState extends State<RootNavigator> {
  int selectedScreen = 0;
  List<Widget> screen = [
    const MainPage(),
    const ExplorePage(),
    const Cart(),
    const FavouriteCart(),
    const Accountcart(),
  ];

  onTapped(int index) {
    setState(() {
      selectedScreen = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen.elementAt(selectedScreen),
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          selectedItemColor: AppColours.primarycolour,
          type: BottomNavigationBarType.fixed,
          iconSize: 30,
          currentIndex: selectedScreen,
          onTap: onTapped,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.room,
                ),
                label: "Main"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Explore"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "Cart"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Favourite"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined), label: "Account")
          ]),
    );
  }
}
