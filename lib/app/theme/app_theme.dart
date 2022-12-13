import 'package:flutter/material.dart';

const primaryColor = Color(0xFF9747FF);
const secondaryColor = Color(0xFFFFFFFF);
const tertiaryColor = Color(0xFF2C2A2F);

ThemeData appThemeData = ThemeData.from(
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: primaryColor,
    onPrimary: secondaryColor,
    secondary: tertiaryColor,
    onSecondary: primaryColor,
    error: Colors.red,
    onError: Colors.red,
    background: secondaryColor,
    onBackground: secondaryColor,
    surface: primaryColor,
    onSurface: tertiaryColor,
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      color: secondaryColor,
      fontSize: 36,
      fontWeight: FontWeight.w700,
      height: 40,
    ),
    titleLarge: TextStyle(
      color: tertiaryColor,
      fontFamily: "Poppins",
      fontSize: 28,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: TextStyle(
      color: secondaryColor,
      fontFamily: "Poppins",
      fontSize: 24,
      fontWeight: FontWeight.w600,
    ),
    titleSmall: TextStyle(
      color: secondaryColor,
      fontSize: 20,
      fontFamily: "Poppins",
      fontWeight: FontWeight.w600,
    ),
    bodyLarge: TextStyle(
      color: tertiaryColor,
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w500,
      fontSize: 16,
    ),
    bodyMedium: TextStyle(
      color: secondaryColor,
      fontFamily: "Poppins",
    ),
    bodySmall: TextStyle(
      color: secondaryColor,
    ),
    labelLarge: TextStyle(
      color: secondaryColor,
      fontFamily: "Montserrat",
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),
    labelMedium: TextStyle(
      color: tertiaryColor,
      fontFamily: "Poppins",
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    labelSmall: TextStyle(
      color: secondaryColor,
      fontFamily: "Montserrat",
      fontSize: 10,
      fontWeight: FontWeight.w600,
    ),
    headlineMedium: TextStyle(
      color: secondaryColor,
    ),
    headlineSmall: TextStyle(
      color: secondaryColor,
    ),
  ),
);
