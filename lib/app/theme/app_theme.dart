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
      onSurface: tertiaryColor),
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      color: secondaryColor,
      fontSize: 36,
      fontWeight: FontWeight.w700,
      height: 40,
    ),
    titleMedium: TextStyle(
      color: secondaryColor,
      fontSize: 25,
    ),
  ),
);
