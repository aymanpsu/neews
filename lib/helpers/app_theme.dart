import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {

  ThemeData lightTheme = ThemeData(
    // Define the default brightness and colors.
    brightness: Brightness.light,
    primaryColor: AppColors.primaryColor,

    // Define the default font family.
    fontFamily: 'Roboto',

    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.lightTextColor
    ),

    // Define the default `TextTheme`. Use this to specify the default
    // text styling for headlines, titles, bodies of text, and more.
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 57,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      displayMedium: TextStyle(
        fontSize: 45,
        color: Colors.black,
      ),
      displaySmall: TextStyle(
        fontSize: 36,
        color: Colors.black,
      ),
      headlineLarge: TextStyle(
        fontSize: 32,
        color: Colors.black,
      ),
      headlineMedium: TextStyle(
        fontSize: 28,
        color: Colors.black,
      ),
      headlineSmall: TextStyle(
        fontSize: 24,
        color: Colors.black,
      ),
      titleLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        color: Colors.black,
      ),
      titleSmall: TextStyle(
        fontSize: 14,
        color: Colors.black,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        color: Colors.black,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        color: Colors.black,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        color: Colors.black,
      ),
      labelLarge: TextStyle(
        fontSize: 14,
        color: Colors.black,
      ),
      labelMedium: TextStyle(
        fontSize: 12,
        color: Colors.black,
      ),
      labelSmall: TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w200,
        color: Colors.black,
      ),
    ), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: AppColors.lightTextColor),
  );
}