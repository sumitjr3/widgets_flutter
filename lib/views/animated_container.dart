import 'package:flutter/material.dart';

class animated_container extends StatefulWidget {
  const animated_container({super.key});

  @override
  State<animated_container> createState() => _animated_containerState();
}

class _animated_containerState extends State<animated_container> {
  double x_axis = 1;
  double y_axis = 1;
  double boxHeight = 100;
  double boxWidth = 100;
  var boxColor = Colors.amber[700];

  void _movebox() {
    setState(() {
      x_axis = -1;
      y_axis = -1;
    });
  }

  void _changeBoxColor() {
    setState(() {
      boxColor = Colors.blue[600];
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _movebox,
      onDoubleTap: _changeBoxColor,
      child: Scaffold(
        backgroundColor: Colors.amber[300],
        body: Center(
          child: AnimatedContainer(
            duration: const Duration(seconds: 2),
            alignment: Alignment(x_axis, y_axis),
            child: Container(
              width: boxWidth,
              height: boxHeight,
              color: boxColor,
            ),
          ),
        ),
      ),
    );
  }
}
