import 'package:flutter/material.dart';

class dialogView extends StatefulWidget {
  const dialogView({super.key});

  @override
  State<dialogView> createState() => _dialogViewState();
}

class _dialogViewState extends State<dialogView> {
  void _showDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Title'),
          content: const Text('more info'),
          actions: [
            MaterialButton(
              onPressed: () {},
              child: const Text('yes'),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('no'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          title: const Text('dialog'),
        ),
        body: Center(
          child: Column(
            children: [
              TextButton(
                onPressed: _showDialog,
                child: const Text(
                  'Alert dialog',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  SimpleDialog(
                    title: const Text('simple dialog'),
                    contentPadding: const EdgeInsets.all(20),
                    children: [
                      const Text('more info'),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('close'),
                      ),
                    ],
                  );
                },
                child: const Text(
                  'Simple dialog',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ],
          ),
        ));
  }
}
