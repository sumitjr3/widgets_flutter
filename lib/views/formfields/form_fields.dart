import 'package:flutter/material.dart';
import 'package:widgets_flutter/models/form_model.dart';
import 'package:widgets_flutter/views/formfields/answers_screen.dart';

class FormFields extends StatefulWidget {
  final List<FormFieldModel> formFields;
  FormFields({super.key, required this.formFields});

  @override
  State<FormFields> createState() => _FormFieldsState();
}

class _FormFieldsState extends State<FormFields> {
  @override
  void initState() {
    super.initState();
    _answers = List.filled(widget.formFields.length, '');
    _textControllers = List.generate(
        widget.formFields.length, (index) => TextEditingController());
  }

  int _currentQuestionIndex = 0;
  List<String> _answers = [];
  List<TextEditingController> _textControllers = [];
  bool _isNextButtonEnabled = false;

  @override
  Widget build(BuildContext context) {
    final currentQuestion = widget.formFields[_currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Question ${_currentQuestionIndex + 1} of ${widget.formFields.length}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(currentQuestion.title),
            SizedBox(height: 16.0),
            if (currentQuestion.keyboardType == 'String')
              TextField(
                controller: _textControllers[_currentQuestionIndex],
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: currentQuestion.hintText,
                ),
                onChanged: (value) {
                  _answers[_currentQuestionIndex] = value;
                  _updateNextButtonState();
                },
              )
            else if (currentQuestion.keyboardType == 'number')
              TextField(
                controller: _textControllers[_currentQuestionIndex],
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: currentQuestion.hintText,
                ),
                onChanged: (value) {
                  _answers[_currentQuestionIndex] = value;
                  _updateNextButtonState();
                },
              )
            else if (currentQuestion.keyboardType == 'radio button')
              Column(
                children: currentQuestion.options!.map((option) {
                  return RadioListTile<String>(
                    title: Text(option),
                    value: option,
                    groupValue: _answers[_currentQuestionIndex],
                    onChanged: (value) {
                      setState(() {
                        _answers[_currentQuestionIndex] = value!;
                        _updateNextButtonState();
                      });
                    },
                  );
                }).toList(),
              ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if (_currentQuestionIndex > 0)
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  _currentQuestionIndex--;
                  _isNextButtonEnabled = true;
                  _textControllers[_currentQuestionIndex].text =
                      _answers[_currentQuestionIndex];
                });
              },
              child: Icon(Icons.arrow_back),
            ),
          const SizedBox(
            width: 10,
          ),
          _currentQuestionIndex == widget.formFields.length - 1
              ? FloatingActionButton(
                  onPressed: _isNextButtonEnabled
                      ? () {
                          // Submit form data
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  AnswersScreen(answers: _answers),
                            ),
                          );
                        }
                      : null,
                  child: Icon(Icons.check),
                )
              : FloatingActionButton(
                  onPressed: _isNextButtonEnabled
                      ? () {
                          setState(() {
                            _textControllers[_currentQuestionIndex].clear();
                            _currentQuestionIndex++;
                            _isNextButtonEnabled = false;
                          });
                        }
                      : null,
                  child: Icon(Icons.arrow_forward),
                ),
        ],
      ),
    );
  }

  void _updateNextButtonState() {
    setState(() {
      _isNextButtonEnabled = _answers[_currentQuestionIndex].isNotEmpty;
    });
  }
}
