import 'package:electrical_app/constants.dart';
import 'package:flutter/material.dart';

class Productimage extends StatelessWidget {
  const Productimage({super.key, required this.size, required this.image});
   
   final Size size;
   final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      height: size.width * 8.0,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
        Container(
          height: size.width*0.7,
          width: size.width*0.7,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle
          ),

        ),
        Image.asset(image,
          height: size.width*0.75,
          width: size.width*0.75,
          fit: BoxFit.cover,
          )
      ],),
    );
  }
}