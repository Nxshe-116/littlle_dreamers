import 'package:flutter/material.dart';

final ThemeData customTheme = ThemeData(
  colorScheme: ColorScheme(
    primary: Color(0xFF171343), // Your main color
    primaryContainer: Color(0xFF4F4A8F), // Lighter variant of your main color
    secondary: Color(0xFF4F4A8F), // Secondary color
    secondaryContainer: Color(0xFFB1A9E1), // Lighter secondary variant
    surface: Colors.white, // Surface color for cards, dialogs, etc.
    background: Color(0xFFFFFFFF), // Background color for app
    error: Colors.red, // Error color
    onPrimary: Colors.white, // Text color on primary background
    onSecondary: Colors.white, // Text color on secondary background
    onSurface: Colors.black, // Text color on surface
    onBackground: Colors.black, // Text color on background
    onError: Colors.white, // Text color on error background
    brightness: Brightness.light, // App brightness
  ),
  useMaterial3: true, // Enables Material 3 (if you want that)
);


