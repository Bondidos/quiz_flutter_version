import 'package:flutter/material.dart';

class ThemeHelper {
  ThemeHelper.singleTone();

  static final ThemeHelper _helper = ThemeHelper.singleTone();

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

  void nextTheme() => _index++;

  void previousTheme() => _index--;
}
