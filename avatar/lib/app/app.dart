import 'package:flutter/cupertino.dart';

class AvatarApp extends StatelessWidget {
  const AvatarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Avatar',
      home: CupertinoPageScaffold(
        child: Center(
          child: Text('Avatar'),
        ),
      ),
    );
  }
}
