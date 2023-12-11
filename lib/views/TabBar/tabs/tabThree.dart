import 'package:flutter/material.dart';

class tabThree extends StatelessWidget {
  const tabThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple[300],
      child: const Center(
        child: Text(
          '3rd bar',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
