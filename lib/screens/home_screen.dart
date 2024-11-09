import 'package:electrical_app/constants.dart';
import 'package:electrical_app/widgets/home/home_body.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: homeAppBar(),
      body: HomeBody(),

    );
  }

  AppBar homeAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      title:Text(  "مرحبا بكم في متجر الالكترونيات ",
      style: GoogleFonts.getFont('Almarai'),
      ),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.menu))
      ],
    );
  }
}