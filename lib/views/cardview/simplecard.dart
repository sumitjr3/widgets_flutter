import 'package:flutter/material.dart';

class simpleCard extends StatefulWidget {
  const simpleCard({super.key});

  @override
  State<simpleCard> createState() => _simpleCardState();
}

class _simpleCardState extends State<simpleCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('simple card')),
      body: const Center(
        child: Card(
          shadowColor: Colors.blue,
          elevation: 10,
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              'hello world',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
