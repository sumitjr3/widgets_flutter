import 'package:flutter/material.dart';

class tabOne extends StatelessWidget {
  const tabOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple[100],
      child: const Center(
        child: Text(
          '1st bar',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
