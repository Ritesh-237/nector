import 'package:flutter/material.dart';
import 'package:nector/screenUI/search_result.dart';
import 'package:nector/utility/colors.dart';
import 'package:nector/utility/data.dart';
import 'package:nector/widgets/explore_detail_page.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColours.appwhite,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: AppColours.appwhite,
        title: const Padding(
          padding: EdgeInsets.only(left: 54.0),
          child: Text(
            "Find Products",
            style: TextStyle(fontSize: 25, color: Colors.grey),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(20)),
              child: TextFormField(
                controller: searchController,
                decoration: InputDecoration(
                    prefixIcon: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SearchResult(
                                  searchText: searchController.text),
                            ));
                      },
                      child: const Icon(
                        Icons.search,
                        color: Colors.blue,
                      ),
                    ),
                    hintText: "Search Store",
                    border:
                        const OutlineInputBorder(borderSide: BorderSide.none)),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(
                  6,
                  (index) => InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) =>
                                      const SearchExplorer())));
                        },
                        child: ExplorerGroceries(
                          color: exploreTileColor[index],
                          name: exploreNames[index],
                          imageData: exploreImages[index],
                        ),
                      )),
            ),
          ),
        ],
      ),
    );
  }
}

class ExplorerGroceries extends StatelessWidget {
  const ExplorerGroceries(
      {super.key,
      required this.color,
      required this.imageData,
      required this.name});
  final Color color;
  final String imageData;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 250,
      width: 160,
      decoration: BoxDecoration(
          border: Border.all(width: 0.6, color: color),
          color: color.withOpacity(0.40),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 25,
          ),
          Image.asset(
            imageData,
            height: 80,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            name,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
