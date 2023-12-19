import 'package:flutter/material.dart';

class wrapWidgetView extends StatefulWidget {
  const wrapWidgetView({super.key});

  @override
  State<wrapWidgetView> createState() => _wrapWidgetViewState();
}

class _wrapWidgetViewState extends State<wrapWidgetView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Wrap Widget')),
      body: Wrap(
        //to make it scrollable we can use SingleChildScrollView instead of Wrap widget
        direction: Axis.horizontal,
        spacing: 10, //horizontal spacing between childrens
        runSpacing: 10, //vertical spacing
        // try (alignment: WrapAlignment.methods) for different placing formats
        children: [
          Container(
            width: 80,
            height: 80,
            color: Colors.deepOrange,
          ),
          Container(
            width: 80,
            height: 80,
            color: Colors.deepPurple,
          ),
          Container(
            width: 80,
            height: 80,
            color: Colors.purple,
          ),
          Container(
            width: 80,
            height: 80,
            color: Colors.pink,
          ),
          Container(
            width: 80,
            height: 80,
            color: Colors.red,
          ),
          Container(
            width: 80,
            height: 80,
            color: Colors.yellow,
          ),
          Container(
            width: 80,
            height: 80,
            color: Colors.blue,
          ),
          Container(
            width: 80,
            height: 80,
            color: Colors.amber,
          ),
          Container(
            width: 80,
            height: 80,
            color: Colors.green,
          ),
          Container(
            width: 80,
            height: 80,
            color: Colors.grey,
          ),
          Container(
            width: 80,
            height: 80,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
