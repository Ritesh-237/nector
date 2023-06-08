import 'package:flutter/material.dart';
import 'package:nector/utility/data.dart';

class FavouriteCart extends StatefulWidget {
  const FavouriteCart({super.key});
  static const routeName = '/favouriteCart';

  @override
  State<FavouriteCart> createState() => _FavouriteCartState();
}

class _FavouriteCartState extends State<FavouriteCart> {
  double index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            "Favourite",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Column(
          children: [
            ListView.builder(
              itemCount: favouriteImages.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) => Favourite(
                name: favouriteNames[index],
                imgData: favouriteImages[index],
              ),
            ),
          ],
        ));
  }
}

class Favourite extends StatelessWidget {
  const Favourite({super.key, required this.name, required this.imgData});
  final String name;
  final String imgData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // const SizedBox(
        //   height: 10,
        // ),
        const Divider(
          color: Colors.black87,
        ),
        InkWell(
          onTap: () => showErrorToast(context),
          child: ListTile(
            leading: SizedBox(
              width: 55,
              child: Image.asset(
                imgData,
              ),
            ),
            title: Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text("325ml,price"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  "\$1.50",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 20,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

showErrorToast(BuildContext context) {
  return ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      duration: Duration(seconds: 1), content: Text("coming soon")));
}
