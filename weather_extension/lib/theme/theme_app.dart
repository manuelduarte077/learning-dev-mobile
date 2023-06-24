import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        // Scaffold
        scaffoldBackgroundColor: Colors.deepPurple[300],
        colorSchemeSeed: Colors.deepPurple[300],

        // Text
        textTheme: TextTheme(
          titleLarge: GoogleFonts.redHatDisplay(fontSize: 24),
          titleMedium: GoogleFonts.redHatDisplay(fontSize: 18),
          titleSmall: GoogleFonts.redHatDisplay(fontSize: 16),
        ),
        fontFamily: GoogleFonts.redHatDisplay().fontFamily,

        // TextField
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
            gapPadding: 0,
          ),
          filled: true,
          fillColor: Colors.grey[200],
          hintStyle: GoogleFonts.redHatDisplay(),
        ),
      );
}
