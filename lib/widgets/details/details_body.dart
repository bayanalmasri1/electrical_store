import 'package:electrical_app/constants.dart';
import 'package:electrical_app/models/product.dart';
import 'package:electrical_app/widgets/details/color_dot.dart';
import 'package:electrical_app/widgets/details/product_image.dart';
import 'package:flutter/material.dart';

class Detailsbody extends StatelessWidget {
  const Detailsbody({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
          decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Productimage(
                  image: product.image,
                  size: size,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Colordot(fillcolor: kTextLightColor, isSelected: true),
                    Colordot(fillcolor: Colors.blue, isSelected: false),
                    Colordot(fillcolor: Colors.red, isSelected: false)
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                child: Text(product.title,
                    style: Theme.of(context).textTheme.titleMedium),
              ),
              Text('السعر :\$${product.price}',
                  style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.w600,
                      color: kSecondaryColor)),
              SizedBox(
                height: kDefaultPadding,
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding * 1.5, vertical: kDefaultPadding / 2),
          child: Text(
            product.description,
            style: TextStyle(color: Colors.white, fontSize: 19),
          ),
        )
      ],
    );
  }
}
