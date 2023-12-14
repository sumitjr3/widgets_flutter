import 'package:flutter/material.dart';

class rich_text_view extends StatefulWidget {
  const rich_text_view({super.key});

  @override
  State<rich_text_view> createState() => _rich_text_viewState();
}

class _rich_text_viewState extends State<rich_text_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rich Text'),
      ),
      body: RichText(
        text: const TextSpan(
          //outer span
          style: TextStyle(color: Colors.black54, fontSize: 30),
          text: "Rich Text ",
          children: <TextSpan>[
            TextSpan(
              text: 'is amazing  ',
              style: TextStyle(color: Colors.deepOrange),
            ), //inner span 1
            TextSpan(text: 'widget '), //inner span 2
            TextSpan(
              text: 'in Flutter',
              style: TextStyle(decoration: TextDecoration.underline),
            ), //inner span 3
          ],
        ),
      ),
    );
  }
}
