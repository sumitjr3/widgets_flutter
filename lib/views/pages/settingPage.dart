import 'package:flutter/material.dart';

class settingPage extends StatefulWidget {
  const settingPage({super.key});

  @override
  State<settingPage> createState() => _settingPageState();
}

class _settingPageState extends State<settingPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text(
          'SETTING',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
