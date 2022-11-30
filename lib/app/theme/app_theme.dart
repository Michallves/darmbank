import 'package:flutter/material.dart';

ThemeData appThemeData = ThemeData(
    primaryColor: const Color(0xFF9747FF),
    textTheme: const TextTheme(
        titleLarge: TextStyle(
          color: Colors.white,
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
        titleMedium: TextStyle(
          color: Colors.white,
          fontSize: 25,
        )),
    backgroundColor: Colors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
            elevation: const MaterialStatePropertyAll(0),
            backgroundColor:
                const MaterialStatePropertyAll(Color(0xFF9747FF)))));
