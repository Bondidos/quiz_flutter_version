import 'package:flutter/material.dart';
import 'package:quiz_flutter_version/main.dart';

class ThemeHelper {
  QuizState? _state;

  ThemeHelper._singleTone(this._state);

  static ThemeHelper _helper = ThemeHelper._singleTone(null);

  factory ThemeHelper([QuizState? state]) {
    if (_helper._state == null && state != null) {
      _helper = ThemeHelper._singleTone(state);
    }
    return _helper;
  }

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
    _helper._state?.setState(
      () {
        _index++;
      },
    );
  }

  void previousTheme() {
    _helper._state?.setState(
      () {
        _index--;
      },
    );
  }

  void reset() {
    _helper._state?.setState(() {
      _index = 0;
    });
  }
}
