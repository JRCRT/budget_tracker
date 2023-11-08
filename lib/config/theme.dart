import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    primaryColor: Colors.blue,
    /* colorScheme: ColorScheme.fromSeed(
      seedColor: const Color.fromARGB(1, 79, 181, 255),
    ), */
    /* useMaterial3: true, */
    // primaryColorDark: Color(0xFFFC0028),
    // primaryColorLight: Color(0xFFFE9AAA),
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Roboto',
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 36,
      ),
      displayMedium: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
      displaySmall: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
      headlineMedium: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
      headlineSmall: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
      titleLarge: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      ),
      bodyLarge: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.normal,
        fontSize: 12,
      ),
      bodyMedium: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.normal,
        fontSize: 10,
      ),
    ),
  );
}
