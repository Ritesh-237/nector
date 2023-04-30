import 'package:flutter/material.dart';
import 'package:nector/utility/colors.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: "Search for your product",
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderSide: BorderSide(color:AppColours.containerGreyColor.withOpacity(0.6) ),
              borderRadius: BorderRadius.circular(20.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color:AppColours.containerGreyColor.withOpacity(0.6) ),
              borderRadius: BorderRadius.circular(20.0),),

          filled: true,

          fillColor: AppColours.containerGreyColor.withOpacity(0.6)),
    );
  }
}
