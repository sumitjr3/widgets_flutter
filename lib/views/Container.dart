import 'package:flutter/material.dart';

class ContainerView extends StatefulWidget {
  const ContainerView({super.key});

  @override
  State<ContainerView> createState() => _ContainerViewState();
}

class _ContainerViewState extends State<ContainerView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container Widget'),
      ),
      body: Container(
        height: 200,
        width: 240,
        color: Colors.blue,
        alignment: Alignment.center,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
          ),
          child: const Text("centrally alligned"),
        ),
      ),
    );
  }
}
