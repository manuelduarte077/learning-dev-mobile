import 'package:flutter/cupertino.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text('Hello World'),
        ),
        child: Image.network(
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
        ),
      ),
    );
  }
}
