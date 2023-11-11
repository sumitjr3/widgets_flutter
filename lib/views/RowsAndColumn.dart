import 'package:flutter/material.dart';

class RowsAndColumn extends StatefulWidget {
  const RowsAndColumn({super.key});

  @override
  State<RowsAndColumn> createState() => _RowsAndColumnState();
}

class _RowsAndColumnState extends State<RowsAndColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rows and Column'),
      ),
      body: const Column(
        children: [
          Row(
            children: [
              Text(
                'first',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              Text(
                'second',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              Text(
                'third',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'fourth',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              Text(
                'fifth',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              Text(
                'sixth',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
