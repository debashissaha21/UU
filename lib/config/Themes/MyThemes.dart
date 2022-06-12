import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemes {
  static ThemeData lightTheme = ThemeData(
    fontFamily: GoogleFonts.poppins().fontFamily,
    useMaterial3: true,
    primarySwatch: Colors.deepPurple,
  );
  static ThemeData darkTheme = ThemeData(
    fontFamily: GoogleFonts.poppins().fontFamily,
    brightness: Brightness.dark,
    useMaterial3: true,
    primarySwatch: Colors.deepPurple,
  );
}
