// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

MaterialStateProperty<T?> convert<T>(T color) {
  return MaterialStateProperty.all<T>(color);
}

//Colors
Color primary = Color.fromARGB(255, 54, 117, 70);

Color onPrimaryDark = Color.fromARGB(255, 31, 31, 31);
Color onPrimary = Color.fromARGB(255, 61, 61, 61);
Color onPrimaryLight = Color.fromARGB(255, 88, 88, 88);

Color onSecondary = Color.fromARGB(255, 255, 255, 255);

//----------------------------------------------------------
//
Color scaffoldBg = onPrimary;

//appBar
Color appBarBg = onPrimaryDark;
Color statusBar = onPrimary;

//Text
Color textColor = onSecondary;

TextStyle basicTextStyle =
    GoogleFonts.roboto(textStyle: TextStyle(color: textColor));

//-----------------------------------------------------------
//Theme parts
DrawerThemeData _drawerTheme = DrawerThemeData(
  backgroundColor: onPrimaryLight,
);

AppBarTheme _appBarTheme = AppBarTheme(
  systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: statusBar),
  backgroundColor: appBarBg,
  titleTextStyle: TextStyle(color: textColor),
);

ElevatedButtonThemeData _elevatedButtonThemeData = ElevatedButtonThemeData(
    style: ButtonStyle(
  backgroundColor: convert<Color>(primary),
  textStyle: convert<TextStyle>(basicTextStyle),
));

//-----------------------------------------------------------
//theme
ThemeData theme1 = ThemeData(
  useMaterial3: true,
  primaryColor: primary,
  scaffoldBackgroundColor: scaffoldBg,
  textTheme: TextTheme(bodyText2: basicTextStyle),
  appBarTheme: _appBarTheme,
  // elevatedButtonTheme: _elevatedButtonThemeData,
  drawerTheme: _drawerTheme,
);
