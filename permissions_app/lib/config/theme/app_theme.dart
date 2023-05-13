import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,

        // Text
        textTheme: TextTheme(
          titleLarge: GoogleFonts.poppins(),
          titleMedium: GoogleFonts.poppins(fontSize: 35),
        ),
      );
}
