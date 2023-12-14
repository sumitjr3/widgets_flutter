import 'package:flutter/material.dart';

class gestureDetectorView extends StatefulWidget {
  const gestureDetectorView({super.key});

  @override
  State<gestureDetectorView> createState() => _gestureDetectorViewState();
}

class _gestureDetectorViewState extends State<gestureDetectorView> {
  int _numberOfTimesTapped = 0;

  void onTapped() {
    setState(() {
      _numberOfTimesTapped++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Tapped ' + _numberOfTimesTapped.toString() + ' times',
            style: TextStyle(fontSize: 30),
          ),
          GestureDetector(
            onTap: onTapped,
            child: Container(
              color: Colors.green,
              padding: EdgeInsets.all(15),
              child: Text(
                'Tap here',
                style: TextStyle(fontSize: 30),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
