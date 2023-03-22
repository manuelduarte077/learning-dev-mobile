import 'package:dynamic_app_icon/dynamic_app_icon.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class BatteryApp extends StatelessWidget {
  const BatteryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const AppIcon(
        icon: FlutterLogo(),
        child: HomeScreen(),
      ),
    );
  }
}
