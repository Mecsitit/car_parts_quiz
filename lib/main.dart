import 'package:flutter/material.dart';


import 'home.dart';

void main() {
  runApp(AussieSlang());
}

class AussieSlang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
          theme: ThemeData(
              brightness: Brightness.dark,
              primaryColor: Colors.blueGrey[900]
          ),
      home: Home(),
    );
  }
}
