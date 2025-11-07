import 'package:flutter/material.dart';
import 'package:nector/utility/data.dart';

class FavouriteCart extends StatefulWidget {
  const FavouriteCart({super.key});
  static const routeName = '/favouriteCart';

  @override
  State<FavouriteCart> createState() => _FavouriteCartState();
}

class _FavouriteCartState extends State<FavouriteCart> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "My Favourites",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      body: favouriteImages.isEmpty
          ? const Center(
              child: Text(
                "No favourites yet ❤️",
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            )
          : ListView.builder(
              padding: EdgeInsets.all(screenWidth * 0.04),
              itemCount: favouriteImages.length,
              itemBuilder: (context, index) => Favourite(
                name: favouriteNames[index],
                imgData: favouriteImages[index],
              ),
            ),
    );
  }
}

class Favourite extends StatelessWidget {
  const Favourite({super.key, required this.name, required this.imgData});
  final String name;
  final String imgData;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Card(
      margin: EdgeInsets.symmetric(vertical: screenWidth * 0.02),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () => showErrorToast(context),
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.03),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  imgData,
                  width: screenWidth * 0.18,
                  height: screenWidth * 0.18,
                  // fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: screenWidth * 0.04),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "325ml, Price",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    "\$1.50",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.green,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    onPressed: () {
                      showErrorToast(context);
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

showErrorToast(BuildContext context) {
  return ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      duration: Duration(seconds: 1),
      content: Text("Coming soon 🚀"),
    ),
  );
}
