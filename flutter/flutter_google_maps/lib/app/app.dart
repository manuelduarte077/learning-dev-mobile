import 'package:flutter/material.dart';
import 'package:flutter_google_maps/screens/01_standard_markers_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: StandardMarkersScreen(),
      ),
    );
  }
}
