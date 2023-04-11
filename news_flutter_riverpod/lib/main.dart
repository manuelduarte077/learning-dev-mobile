import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_flutter_riverpod/app/app.dart';
import 'package:news_flutter_riverpod/config/constants/environment.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Environment.initEnvironment();

  runApp(const ProviderScope(child: MyApp()));
}
