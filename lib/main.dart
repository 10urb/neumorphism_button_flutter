import 'package:flutter/material.dart';
import 'package:neumorphism_button_flutter/neumorphism_button.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: NeumorphismButton(),
    );
  }
}
