import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  ThemeData get themeData => ThemeData(
        useMaterial3: true,

        /// Font family
        fontFamily: GoogleFonts.montserrat().fontFamily,
        textTheme: TextTheme(
          titleLarge: GoogleFonts.montserrat(
            fontSize: 26,
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
          titleMedium: GoogleFonts.montserrat(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
          titleSmall: GoogleFonts.montserrat(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
      );
}
