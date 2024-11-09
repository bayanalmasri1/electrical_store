import 'package:electrical_app/constants.dart';
import 'package:flutter/material.dart';

class Colordot extends StatelessWidget {
  const Colordot({super.key, required this.fillcolor, required this.isSelected});

  final Color fillcolor;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding /2.5),
      padding: EdgeInsets.all(3),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? kTextLightColor : Colors.transparent
        )
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: fillcolor
        ),
      ),
    );
  }
}