import 'package:flutter/material.dart';

class AppConfigUi {
  AppConfigUi._();

  static const MaterialColor _primarySwatch = MaterialColor(0xFF0066B0, {
    50: Color(0x000066b0),
    100: Color(0x00005c9e),
    200: Color(0x0000528d),
    300: Color(0x0000477b),
    400: Color(0x00003d6a),
    500: Color(0x00003358),
    600: Color(0x00002946),
    700: Color(0x00001f35),
    800: Color(0x00001423),
    900: Color(0x00000a12),
  });

  static final ThemeData theme = ThemeData(
    primarySwatch: _primarySwatch,
    primaryColor: const Color(0xFF0066B0),
    primaryColorLight: const Color(0xFF129FFF),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
      ),
      labelStyle: TextStyle(color: Colors.black),
    ),
  );
}
