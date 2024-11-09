import 'package:electrical_app/constants.dart';
import 'package:electrical_app/models/product.dart';
import 'package:electrical_app/screens/details_screen.dart';
import 'package:electrical_app/widgets/details/details_body.dart';
import 'package:electrical_app/widgets/home/product_cart.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(children: [
        SizedBox(height: kDefaultPadding / 2),
        Expanded(
            child: Stack(children: [
          Container(
            margin: EdgeInsets.only(top: 70.0),
            decoration: BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
          ),
          ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) => Productcart(
                  itemindex: index,
                  product: products[index],
                  onpress: () {
                   
                  }))
        ]))
      ]),
    );
  }
}
