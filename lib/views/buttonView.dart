import 'package:flutter/material.dart';

class buttonView extends StatefulWidget {
  const buttonView({super.key});

  @override
  State<buttonView> createState() => _buttonViewState();
}

class _buttonViewState extends State<buttonView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('button view'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(200, 60),
              textStyle: const TextStyle(fontSize: 24),
              primary: Colors.orange,
              onPrimary: Colors.blue,
            ),
            child: const Text('Elevated Button'),
          ),
          const SizedBox(
            height: 50,
            width: 100,
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
                minimumSize: const Size.fromHeight(60),
                textStyle: const TextStyle(fontSize: 24),
                primary: Colors.yellow,
                side: const BorderSide(width: 3, color: Colors.red)),
            child: const Text('Outlined Button'),
          ),
          const SizedBox(
            height: 50,
            width: 100,
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              textStyle: const TextStyle(fontSize: 24),
              primary: Colors.green,
            ),
            child: const Text('Text Button'),
          ),
          const SizedBox(
            height: 50,
            width: 100,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              color: Colors.pink,
            ),
          ),
          const SizedBox(
            height: 50,
            width: 100,
          ),
          OutlinedButton.icon(
            icon: const Icon(
              Icons.settings,
              color: Colors.purple,
            ),
            onPressed: () {},
            label: const Text('button including icon'),
          ),
        ],
      ),
    );
  }
}
