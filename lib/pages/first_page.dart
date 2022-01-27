import 'package:flutter/material.dart';
import 'package:quiz_flutter_version/data_source/questions.dart';
import 'package:quiz_flutter_version/pages/result_screen.dart';
import 'package:quiz_flutter_version/util/theme_helper.dart';

import '../constants.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  Answer? _answer;
  final Questions _questions = Questions();
  var _index = 0;
  final _themeHelper = ThemeHelper();

  Map<Question, Answer?> _answer_store = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: backArrowNavigation(),
        title: Text('Question ${_index + 1}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                _questions.list[_index].question,
                style: questionStyle,
              ),
            ),
            RadioListTile<Answer>(
              title: Text(_questions.list[_index].suggestion1),
              value: Answer.first,
              groupValue: _answer,
              onChanged: (Answer? value) {
                _onCheck(value);
              },
            ),
            RadioListTile<Answer>(
              title: Text(_questions.list[_index].suggestion2),
              value: Answer.second,
              groupValue: _answer,
              onChanged: (Answer? value) {
                _onCheck(value);
              },
            ),
            RadioListTile<Answer>(
              title: Text(_questions.list[_index].suggestion3),
              value: Answer.third,
              groupValue: _answer,
              onChanged: (Answer? value) {
                _onCheck(value);
              },
            ),
            RadioListTile<Answer>(
              title: Text(_questions.list[_index].suggestion4),
              value: Answer.fourth,
              groupValue: _answer,
              onChanged: (Answer? value) {
                _onCheck(value);
              },
            ),
            RadioListTile<Answer>(
              title: Text(_questions.list[_index].suggestion5),
              value: Answer.fifth,
              groupValue: _answer,
              onChanged: (Answer? value) {
                _onCheck(value);
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: ElevatedButton(
                    style: qButtonStyle,
                    onPressed: (_index == 0)
                        ? null
                        : () {
                            onPreviousPressed();
                          },
                    child: const Text("Previous question"),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: ElevatedButton(
                    style: qButtonStyle,
                    onPressed: (_answer == null)
                        ? null
                        : () {
                            onNextPressed();
                          },
                    child: Text(_index == 4 ? 'Finish' : 'Next question'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void saveAnswer() => _answer_store[_questions.list[_index]] = _answer;

  void _onCheck(Answer? value) {
    setState(
      () {
        _answer = value;
        saveAnswer();
      },
    );
  }

  void onNextPressed() {
    setState(
      () {
        if (_index < _questions.list.length - 1) {
          _index++;
          var nextQuestion = _questions.list[_index];
          _answer = _answer_store[nextQuestion];
         _themeHelper.nextTheme();
        }
        if (_answer_store.length == 5 && _index == 4) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ResultScreen(result: makeResult())));
        }
      },
    );
  }

  String makeResult() {
    StringBuffer str = StringBuffer();
    int correctAnswers = 0;
    for (var question in _questions.list) {
      (question.answer == _answer_store[question]) ? correctAnswers++ : null;
    }
    str.write('Result: $correctAnswers/5');
    return str.toString();
  }

  void onPreviousPressed() {
    setState(() {
      _index--;
      _answer = _answer_store[_questions.list[_index]];
      _themeHelper.previousTheme();
    });
  }

  backArrowNavigation() {
    return (_index != 0) ? IconButton(
      onPressed: () {
        onPreviousPressed();
      },
      icon: const Icon(Icons.arrow_back),
    ) : null;
  }
}
