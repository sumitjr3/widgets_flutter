import 'package:flutter/material.dart';

class ListViewSeperator extends StatefulWidget {
  const ListViewSeperator({super.key});

  @override
  State<ListViewSeperator> createState() => _ListViewSeperatorState();
}

class _ListViewSeperatorState extends State<ListViewSeperator> {
  var arrList = [
    'one',
    'two',
    'three',
    'four',
    'five',
    'six',
    'seven',
    'eight',
    'nine',
    'ten',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('seperator listview'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Text(arrList[index],
              style:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold));
        },
        itemCount: arrList.length,
        separatorBuilder: (context, index) {
          return const Divider(
            height: 100,
            thickness: 2,
          );
        },
      ),
    );
  }
}
