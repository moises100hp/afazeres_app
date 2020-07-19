import 'package:afazeresapp/ui/afazeres_tela.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Afazeres'),
        backgroundColor: Colors.black54,
      ),
      body: AfazeresTela(),
    );
  }
}
