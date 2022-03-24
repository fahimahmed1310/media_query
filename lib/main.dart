import 'package:flutter/material.dart';
import 'package:media_query/media_query_practise.dart';

void main() {
  runApp(MediaQuery());
}

class MediaQuery extends StatelessWidget {
  const MediaQuery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MediaQueryPractise(),
    );
  }
}

