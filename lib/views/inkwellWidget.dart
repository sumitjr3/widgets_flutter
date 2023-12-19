import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
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
            showToastMessage("single tap");
          },
          onDoubleTap: () {
            showToastMessage("double tap");
          },
          onLongPress: () {
            showToastMessage("long pressed");
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

  void showToastMessage(String message) => Fluttertoast.showToast(
        msg: message,
        backgroundColor: Colors.red,
        textColor: Colors.black,
        gravity: ToastGravity.BOTTOM,
      );
}
