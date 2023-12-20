import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  ThemeData get themeData => ThemeData(
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity,

        /// Font Family
        fontFamily: GoogleFonts.redHatDisplay().fontFamily,
        textTheme: TextTheme(
          titleLarge: GoogleFonts.redHatDisplay(
            fontSize: 32,
            fontWeight: FontWeight.w800,
          ),
          titleMedium: GoogleFonts.redHatDisplay(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
          titleSmall: GoogleFonts.redHatDisplay(
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
      );
}
