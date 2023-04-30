import 'package:flutter/material.dart';
import 'package:nector/utility/colors.dart';
class SeeAllTile extends StatelessWidget {
  SeeAllTile({ required this.label} );

  String label ;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label,style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),),
          InkWell(
            onTap: (){},
            child: Text("see all", style: TextStyle(
              color: AppColours.googlebutton
            ),),
          )
        ],
      ),
    );
  }
}
