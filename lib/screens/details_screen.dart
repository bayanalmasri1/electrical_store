import 'package:electrical_app/constants.dart';
import 'package:electrical_app/models/product.dart';
import 'package:electrical_app/widgets/details/details_body.dart';
import 'package:flutter/material.dart';

class Detailscreen extends StatelessWidget {
  const Detailscreen({super.key, required this.product});
   final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
     appBar: detailsAppBar(context),
      body: SingleChildScrollView(child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Detailsbody(product: product),
      )),

    );
  }
}

AppBar detailsAppBar (BuildContext context){
  return AppBar(
    backgroundColor: kBackgroundColor,
    elevation: 0,
    leading: IconButton(
      padding: EdgeInsets.only(right: kDefaultPadding),
      icon: Icon(
        Icons.arrow_back,
        color: kPrimaryColor,
      ),
      onPressed: (){
           Navigator.pop(context);
      },),
      centerTitle: false,
      title: Text(
        'رجوع',
        style: Theme.of(context).textTheme.bodySmall,
      ),
    
  );
}