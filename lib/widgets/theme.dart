import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mytheme {
  static ThemeData LightTheme(BuildContext context) =>  ThemeData(
    primarySwatch: Colors.deepPurple,
    fontFamily: GoogleFonts.lato().fontFamily,
    appBarTheme: AppBarTheme(
      color: Colors.white,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.black),
    ),
  );
  static ThemeData DarkTheme(BuildContext context) => ThemeData(
    brightness: Brightness.dark,
  );

}
