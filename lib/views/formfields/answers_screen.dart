import 'package:flutter/material.dart';

class AnswersScreen extends StatelessWidget {
  final List<String> answers;

  AnswersScreen({required this.answers});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Answers'),
      ),
      body: ListView.builder(
        itemCount: answers.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Question ${index + 1}'),
            subtitle: Text(answers[index]),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}
