import 'package:flutter/material.dart';
/** inkwell widget is used to make any widget clickable, we just need to wrap it with widget inkwell */

class inkWellWidget extends StatefulWidget {
  const inkWellWidget({super.key});

  @override
  State<inkWellWidget> createState() => _inkWellWidgetState();
}

class _inkWellWidgetState extends State<inkWellWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ink Well'),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            _showToast("single tap");
          },
          onDoubleTap: () {
            _showToast("double tap");
          },
          onLongPress: () {
            _showToast("long pressed");
          },
          child: Container(
            width: 200,
            height: 200,
            color: Colors.yellow,
          ),
        ),
      ),
    );
  }

  void _showToast(String textOutput) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: Text(textOutput),
        duration: const Duration(seconds: 2),
      ),
    );
  }
}
