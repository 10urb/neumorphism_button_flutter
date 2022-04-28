import 'package:flutter/material.dart';

class NeumorphismButton extends StatefulWidget {
  const NeumorphismButton({Key? key}) : super(key: key);

  @override
  State<NeumorphismButton> createState() => _NeumorphismButtonState();
}

class _NeumorphismButtonState extends State<NeumorphismButton> {
  bool _isElevated = false;
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: _scaffoldBackgroundColor,
        body: Center(
            child: GestureDetector(
          onTap: () => setState(() => _isElevated = !_isElevated),
          child: AnimatedContainer(
            duration: _duration,
            height: _animatedContainerHeightAndWidth,
            width: _animatedContainerHeightAndWidth,
            decoration: BoxDecoration(
              color: _boxDecorationColor,
              borderRadius: BorderRadius.circular(50),
              boxShadow: _isElevated ? _boxShadows : null,
            ),
          ),
        )),
      );

  double get _animatedContainerHeightAndWidth => 200;

  Color get _boxDecorationColor => Colors.grey.shade300;

  Color get _scaffoldBackgroundColor => Colors.grey.shade300;

  Duration get _duration => const Duration(milliseconds: 700);

  List<BoxShadow> get _boxShadows => [
        BoxShadow(
          color: Colors.grey.shade500,
          offset: const Offset(4, 4),
          blurRadius: 15,
          spreadRadius: 1,
        ),
        const BoxShadow(
          color: Colors.white,
          offset: Offset(-4, -4),
          blurRadius: 15,
          spreadRadius: 1,
        ),
      ];
}
