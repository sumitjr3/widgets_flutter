import 'package:flutter/material.dart';

class tabTwo extends StatelessWidget {
  const tabTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple[200],
      child: const Center(
        child: Text(
          '2nd bar',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
