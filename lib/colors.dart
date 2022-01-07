import 'package:flutter/material.dart';

class CustomColor {
  static Color primary = Color(0xFF03A39B);
  static Color secondary = Color(0xFFEF550A);
  static Color info = Color(0xFFEB5757);
  static Color success = Color(0xFF27AE60);
  static Color gray500 = Color(0xFFE0E0E0);
  static Color gray600 = Color(0xFFBDBDBD);
  static Color gray700 = Color(0xFF828282);
  static Color gray800 = Color(0xFF4F4F4F);
  static Color gray900 = Color(0xFF333333);
}

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  final swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  });
  return MaterialColor(color.value, swatch);
}