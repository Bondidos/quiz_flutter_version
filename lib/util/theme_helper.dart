import 'package:flutter/material.dart';
import 'package:quiz_flutter_version/main.dart';

class ThemeHelper {
  QuizState? _state;
  ThemeHelper.singleTone(this._state);

  static final ThemeHelper _helper = ThemeHelper.singleTone(null);

  factory ThemeHelper() => _helper;

  final _themeList = <ThemeData>[
    ThemeData(primarySwatch: Colors.amber),
    ThemeData(primarySwatch: Colors.blue),
    ThemeData(primarySwatch: Colors.brown),
    ThemeData(primarySwatch: Colors.green),
    ThemeData(primarySwatch: Colors.red),
  ];

  int _index = 0;

  ThemeData setTheme() => _themeList[_index];

  void nextTheme() {
    _index++;

    _helper._state?.setState(() {
    });
  }

  void previousTheme() {
    _index--;
    _helper._state?.setState(() {

    });

  }
}
