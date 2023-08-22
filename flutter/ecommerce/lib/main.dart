import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Column(
          children: [
            const Center(
              child: Text('Hello World'),
            ),
            AlertDialog.adaptive(
              title: const Text('AlertDialog Title'),
              content: const Text('AlertDialog description'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context, 'Cancel'),
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context, 'OK'),
                  child: const Text('OK'),
                ),
              ],
            ),

            /// Text Adaptive
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(),
            ),


          ],
        ),
      ),
    );
  }
}
