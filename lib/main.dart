import 'package:flutter/material.dart';
import 'package:neumorphism_button_flutter/neumorphism_button.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NeumorphismButton(),
    );
  }
}
