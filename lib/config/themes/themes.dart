import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    surface: Color.fromARGB(255, 220, 242, 241),
    primary: Color.fromARGB(255, 15, 16, 53),
    secondary: Color.fromARGB(255, 54, 84, 134),
    tertiary: Color.fromARGB(255, 127, 199, 217),
  ),
  textTheme: const TextTheme(
    titleMedium: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 20
    ),
    bodyLarge: TextStyle(
      color: Colors.black
    ),
    bodyMedium: TextStyle(
        color: Colors.white
    ),
    displayMedium: TextStyle(
      color: Color.fromARGB(255, 127, 199, 217),
      fontSize: 12
    )
  ),
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: Color.fromARGB(255, 220, 242, 241),
    selectionColor: Color.fromARGB(255, 220, 242, 241),
  ),
  iconTheme: const IconThemeData(
    color: Colors.black,
  ),
  iconButtonTheme: const IconButtonThemeData(
    style: ButtonStyle(
      iconColor: WidgetStatePropertyAll(Colors.white),
      foregroundColor: WidgetStatePropertyAll(Colors.white),
    )
  ),
  fontFamily: 'Exo',
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    surface: Color.fromARGB(255, 15, 16, 53),
    primary: Color.fromARGB(255, 220, 242, 241),
    secondary: Color.fromARGB(255, 127, 199, 217),
    tertiary: Color.fromARGB(255, 54, 84, 134),
  ),
  textTheme: const TextTheme(
    titleMedium: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 20
    ),
    bodyLarge: TextStyle(
      color: Colors.white
    ),
    bodyMedium: TextStyle(
        color: Colors.black
    ),
    displayMedium: TextStyle(
      color: Color.fromARGB(255, 54, 84, 134),
      fontSize: 12
    )
  ),
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: Color.fromARGB(255, 15, 16, 53),
    selectionColor: Color.fromARGB(255, 15, 16, 53),
  ),
  iconTheme: const IconThemeData(
    color: Colors.white,
  ),
  iconButtonTheme: const IconButtonThemeData(
    style: ButtonStyle(
      iconColor: WidgetStatePropertyAll(Colors.black),
      foregroundColor: WidgetStatePropertyAll(Colors.black),
    ),
  ),
  fontFamily: 'Exo',
);