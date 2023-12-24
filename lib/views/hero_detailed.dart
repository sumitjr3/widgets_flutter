import 'package:flutter/material.dart';

class hero_detailed_screen extends StatelessWidget {
  const hero_detailed_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        title: const Text('Detailed Screen'),
      ),
      body: Center(
        child: Container(
          child: Hero(
            tag: 'background',
            child: Image.asset('lib/assets/images/image.png'),
          ),
        ),
      ),
    );
  }
}
