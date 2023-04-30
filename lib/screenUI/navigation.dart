
// class Navigation extends StatefulWidget {
//   const Navigation({super.key});

//   @override
//   State<Navigation> createState() => _NavigationState();
// }

// class _NavigationState extends State<Navigation> {
//   int selectedScreen = 0;

//   List<Widget> screens = [
//     const MainPage(),
//     const Card(),
//     const ExplorePage(),
//     const FavouriteCart(),
//     const Accountcart(),
//   ];

//   onTapped(int index) {
//     setState(() {
//       selectedScreen = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//           currentIndex: selectedScreen,
//           selectedItemColor: AppColours.groceryRiceColor,
//           onTap: onTapped,
//           type: BottomNavigationBarType.fixed,
//           items: const [
//             BottomNavigationBarItem(
//                 icon: Icon(
//                   Icons.room,
//                 ),
//                 label: 'Main'),
//             BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Explore'),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.shopping_cart), label: 'Cart'),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.favorite), label: 'Favourite'),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.account_circle_outlined), label: 'Account'),
//           ]),
//       body: screens.elementAt(selectedScreen),
//     );
//   }
// }
