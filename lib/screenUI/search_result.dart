import 'package:flutter/material.dart';

class SearchResult extends StatefulWidget {
  static const routeName = '/Searchresult';
  const SearchResult({super.key, required this.searchText});

  final String searchText;

  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back),
        ),
      ),
      body: Center(child: Text(widget.searchText)),
    );
  }
}
