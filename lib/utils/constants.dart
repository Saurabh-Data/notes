import 'package:flutter/material.dart';

class AppConstants {
  // Colors
  static const Color primaryColor = Colors.blue;            // Primary color for the app (used in AppBar, Buttons, etc.)
  static const Color accentColor = Colors.orangeAccent;     // Accent color for highlighting
  static const Color backgroundColor = Color(0xFFF5F5F5);   // Light background color for the app
  static const Color textColor = Colors.black;              // Default text color
  static const Color noteCardColor = Colors.white;          // Background color for note cards
  static const Color shadowColor = Colors.grey;             // Shadow color for card and elevated items

  // Text Styles
  static const TextStyle titleTextStyle = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: textColor,
  );

  static const TextStyle subtitleTextStyle = TextStyle(
    fontSize: 16,
    color: Colors.black54,
  );

  static const TextStyle noteContentTextStyle = TextStyle(
    fontSize: 18,
    color: textColor,
    height: 1.5,
  );

  // Padding & Margins
  static const double defaultPadding = 16.0;
  static const EdgeInsets screenPadding = EdgeInsets.all(16.0);
  static const EdgeInsets cardMargin = EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0);

  // Shadows
  static final BoxShadow defaultBoxShadow = BoxShadow(
    color: shadowColor.withOpacity(0.2),
    blurRadius: 10,
    offset: Offset(0, 5),
  );

  // Other UI Constants
  static const double cardElevation = 3.0;
}
