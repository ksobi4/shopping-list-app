import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

MaterialStateProperty<T?> convert<T>(T color) {
  return MaterialStateProperty.all<T>(color);
}

Color accentColor = Color.fromARGB(255, 138, 14, 221);

TextStyle basicTextStyle =
    GoogleFonts.roboto(textStyle: const TextStyle(color: Colors.white));

ThemeData theme1 = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: Color.fromARGB(255, 61, 61, 61),
  textTheme: TextTheme(
    // bodyText1: TextStyle(color: Colors.white),
    bodyText2:
        GoogleFonts.roboto(textStyle: const TextStyle(color: Colors.white)),
  ),
  appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(255, 31, 31, 31),
      titleTextStyle: TextStyle(color: Colors.white)),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          backgroundColor: convert<Color>(accentColor),
          textStyle: convert<TextStyle>(basicTextStyle))),
);
