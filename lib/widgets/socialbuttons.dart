import 'package:flutter/material.dart';
import 'package:nector/utility/colors.dart';
import 'package:nector/utility/screen_util.dart';

class SocialButton extends StatelessWidget {
   SocialButton(
      {required this.color,
      required this.label,
      required this.image,
      required this.callback});

  Color color;
  String label;
  String image;
  VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.only(
          left: 24, right: 24, top: 20),
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      decoration:
      BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      child: InkWell(
        onTap: callback,
            child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Image.asset(image)),
            SizedBox(width: 13,),
            Expanded(
                flex:3,
                child: Text(label,
            style: TextStyle(

                color: AppColours.appwhite,
                fontSize: 18,
                // height: (18 / 18).toHeight
            ),
            ),)
      ],
      ),

      ),
    );
  }
}
