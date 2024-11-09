import 'package:electrical_app/constants.dart';
import 'package:electrical_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
     title: "Electrical Store",
     theme:ThemeData(
      textTheme: GoogleFonts.almaraiTextTheme(
        Theme.of(context).textTheme
      ),
      primaryColor: kPrimaryColor,
      hintColor: kPrimaryColor
     ),
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [Locale("ar", "AE")],
      locale: Locale("ar", "AE"),



     home: HomeScreen(),
    );
  }
}

