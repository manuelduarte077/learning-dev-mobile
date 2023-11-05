import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const mySiwftUIView = 'MySwiftUIView';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Builder(
          builder: (context) {
            return LayoutBuilder(builder: (context, constraints) {
              return SizedBox.fromSize(
                size: Size(
                  constraints.biggest.width,
                  constraints.biggest.height,
                ),
                child: const UiKitView(
                  viewType: mySiwftUIView,
                  layoutDirection: TextDirection.ltr,
                  creationParamsCodec: StandardMessageCodec(),
                  creationParams: {},
                ),
              );
            });
          },
        ),
      ),
    );
  }
}
