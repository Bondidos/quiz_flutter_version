import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:quiz_flutter_version/data_source/questions.dart';

import '../constants.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

enum Answer { first, second, third, fourth, fifth }

class _FirstPageState extends State<FirstPage> {
  Answer? _answer;
  final Questions _questions = Questions();
  var index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Question 1'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(_questions.list[index].question),
            ),
            RadioListTile<Answer>(
              title: Text(_questions.list[index].suggestion1),
              value: Answer.first,
              groupValue: _answer,
              onChanged: (Answer? value) {
                setState(() {
                  _answer = value;
                });
              },
            ),
            RadioListTile<Answer>(
              title: Text(_questions.list[index].suggestion2),
              value: Answer.second,
              groupValue: _answer,
              onChanged: (Answer? value) {
                setState(() {
                  _answer = value;
                });
              },
            ),
            RadioListTile<Answer>(
              title: Text(_questions.list[index].suggestion3),
              value: Answer.third,
              groupValue: _answer,
              onChanged: (Answer? value) {
                setState(() {
                  _answer = value;
                });
              },
            ),
            RadioListTile<Answer>(
              title: Text(_questions.list[index].suggestion4),
              value: Answer.fourth,
              groupValue: _answer,
              onChanged: (Answer? value) {
                setState(() {
                  _answer = value;
                });
              },
            ),
            RadioListTile<Answer>(
              title: Text(_questions.list[index].suggestion5),
              value: Answer.fifth,
              groupValue: _answer,
              onChanged: (Answer? value) {
                setState(() {
                  _answer = value;
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                  child: ElevatedButton(
                    style: qButtonStyle,
                    onPressed: () {
                      setState(() {
                        if(index>0) {
                          index--;
                        }
                      });
                    },
                    child: const Text("Previous question"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                  child: ElevatedButton(
                    style: qButtonStyle,
                    onPressed: () {
                      setState(() {
                        if(index < _questions.list.length) {
                          index++;
                        }
                      });
                    },
                    child: const Text("Next question"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
