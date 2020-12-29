import 'package:carte_visite/screen/wrapper.dart';
import 'package:flutter/material.dart';
//import 'screen/visit_card.dart';
import 'screen/Menu/menu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Menu(),
    );
  }
}
