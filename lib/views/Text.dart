import 'package:flutter/material.dart';

class TextView extends StatefulWidget {
  const TextView({super.key});

  @override
  State<TextView> createState() => _TextViewState();
}

class _TextViewState extends State<TextView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Different text'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Font Size',
            style: TextStyle(fontSize: 32.0),
          ),
          const Text(
            'Bold Text',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
          ),
          const Text(
            'Text FontStyle',
            style: TextStyle(fontStyle: FontStyle.italic, fontSize: 16.0),
          ),
          const Text(
            'Text color',
            style: TextStyle(color: Colors.blue, fontSize: 16.0),
          ),
          const Text(
            'Letter Spacing',
            style: TextStyle(letterSpacing: 2.0, fontSize: 16.0),
          ),
          const Text(
            'Word Spacing',
            style: TextStyle(wordSpacing: 4.0, fontSize: 16.0),
          ),
          const Text(
            'Text Baseline',
            style: TextStyle(
                textBaseline: TextBaseline.alphabetic, fontSize: 16.0),
          ),
          const Text(
            'Height',
            style: TextStyle(height: 1.5, fontSize: 16.0),
          ),
          const Text(
            'Decoration Color',
            style: TextStyle(decorationColor: Colors.red, fontSize: 16.0),
          ),
          const Text(
            'Decoration style',
            style: TextStyle(
                decorationStyle: TextDecorationStyle.dashed, fontSize: 16.0),
          ),
          const Text(
            'Underline Decoration',
            style:
                TextStyle(decoration: TextDecoration.underline, fontSize: 16.0),
          ),
          const Text(
            'Text with different font ',
            style: TextStyle(fontFamily: 'Roboto', fontSize: 16.0),
          ),
          Container(
            color: Colors.yellow,
            child: const Text('background color changed'),
          ),
          RichText(
            text: const TextSpan(
              text: 'foreground',
              style: TextStyle(color: Colors.blue, fontSize: 16.0),
            ),
          ),
          const Text(
            'Shadow Added',
            style: TextStyle(
              shadows: [
                Shadow(
                    offset: Offset(2.0, 2.0),
                    blurRadius: 3.0,
                    color: Colors.grey),
              ],
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
