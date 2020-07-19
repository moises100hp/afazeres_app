import 'package:afazeresapp/ui/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Afazeres());
}

class Afazeres extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Afazeres',
      home: Home(),
    );
  }
}
