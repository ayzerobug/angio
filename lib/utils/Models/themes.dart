import 'package:flutter/material.dart';

final Color primary = Colors.blue;
final Color primaryColor = Colors.blue.shade300;

const TextTheme textTheme = TextTheme(
  headline1: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
  headline2: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
  headline3: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
  headline4: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
  headline5: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
  headline6: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
  bodyText1: TextStyle(fontSize: 16.0),
  bodyText2: TextStyle(fontSize: 14.0),
);

final ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: Colors.grey.shade900,
  primaryColorDark: primaryColor,
  colorScheme: ColorScheme.dark(primary: primary),
  dividerColor: Colors.white,
  backgroundColor: Colors.black,
  cardColor: Colors.black,
  fontFamily: 'Roboto',
  textTheme: textTheme,
);

final ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  primaryColor: primaryColor,
  colorScheme: ColorScheme.light(primary: primary),
  dividerColor: Colors.black,
  backgroundColor: Colors.white,
  cardColor: Colors.white,
  fontFamily: 'Roboto',
  textTheme: textTheme,
);
