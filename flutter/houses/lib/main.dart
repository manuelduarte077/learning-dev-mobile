import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:houses/home/home.dart';
import 'package:houses/services/shared_preferences_service.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => SharedPreferenceService()..init(),
      child: MaterialApp(
        title: 'Houses',
        theme: Theme.of(context).copyWith(
          textTheme: GoogleFonts.poppinsTextTheme().apply(
            bodyColor: Colors.black,
            displayColor: Colors.black,
            decorationColor: Colors.black,
          ),
          scaffoldBackgroundColor: Colors.white,
        ),
        home: const HomePage(),
      ),
    );
  }
}
