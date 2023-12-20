import 'package:flutter/material.dart';

import 'package:api_with_riverpod/app/app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(child: MainApp()),
  );
}
