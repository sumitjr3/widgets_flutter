import 'package:flutter/material.dart';

/* unlike static list view this is dynamic which requires array to display data, 
very useful when we have data coming from some api calls,
 the list will automatically srink and expand accordingly to the number of item are present.
 */
class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({super.key});

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
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
    'ten'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Using builder'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Text(arrList[index],
              style:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold));
        },
        itemCount: arrList.length,
        /*helps with the count of list*/
        itemExtent: 150,
        /** helps with the space one list item holds */
        scrollDirection:
            Axis.vertical, /**helps to set the scroll type of list */
      ),
    );
  }
}
