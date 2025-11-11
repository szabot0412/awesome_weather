import 'package:flutter/material.dart';

class AppColorScheme{

  static ColorScheme light = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFFF06543),
    onPrimary: Colors.black,
    secondary: Color(0xFFF09D51),
    onSecondary: Colors.black,
    error: Color(0xFFFF8C8C),
    onError: Colors.white,
    surface: Color(0xFFE8E9EB),
    onSurface: Color(0xFF222222),
    surfaceContainer: Color(0xFFE0DFD5),
    outline: Colors.grey
  );

  static ColorScheme dark = ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xFFF06543),
      onPrimary: Colors.white,
      secondary: Color(0xFFF09D51),
      onSecondary: Colors.white,
      error: Color(0xFFB00020),
      onError: Colors.white,
      surface: Color(0xFF2C2D30),
      onSurface: Color(0xFFE0DFD5),
      surfaceContainer: Color(0xFF2B2B25),
      outline: Color(0xFF222222)
  );

  static ColorScheme getColorScheme(Brightness brightness){
    switch(brightness){
      case Brightness.light:
        return light;
      case Brightness.dark:
        return dark;
    }
  }
}