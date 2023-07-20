import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nba_app/app/main.dart';
import 'package:nba_app/config/constants/environment.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Environment.initEnvironment();

  runApp(const ProviderScope(child: MyApp()));
}
