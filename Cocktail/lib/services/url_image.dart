import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class URLImage extends StatefulWidget {
  final Uri url;

  const URLImage({Key? key, required this.url}) : super(key: key);

  @override
  _URLImageState createState() => _URLImageState();
}

class _URLImageState extends State<URLImage> {
  late Future<http.Response> _futureResponse;

  @override
  void initState() {
    super.initState();
    _futureResponse = http.get(widget.url);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<http.Response>(
      future: _futureResponse,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final image = Image.memory(snapshot.data!.bodyBytes);
          return AspectRatio(
            // aspectRatio: image.width / image.height,
            aspectRatio:  1,
            child: image,
          );
        } else if (snapshot.hasError) {
          return const Icon(Icons.error);
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
