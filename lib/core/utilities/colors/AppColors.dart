import 'package:flutter/material.dart';

class AppColors extends ColorScheme{
  static const Color white = Color(0xFFF9F7F7);
  static const Color black = Colors.black;

  //Primary
  static const Color gray = Color(0xFFDBE2EF);
  //Secondary
  static const Color blue = Color(0xFF3F72AF);
  //Tertiary
  static const Color dark_blue = Color(0xFF112D4E);

  const AppColors({
    Color white = white,
    Color black = black,
    Color gray = gray,
    Color blue = blue,
    Color dark_blue = dark_blue,
    required super.brightness, required super.onPrimary, required super.onSecondary, required super.error, required super.onError, required super.background, required super.onBackground, required super.surface, required super.onSurface

  }) : super(primary: gray, secondary: blue, tertiary: dark_blue, );
}