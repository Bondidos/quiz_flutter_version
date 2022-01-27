import 'package:flutter/material.dart';

ButtonStyle qButtonStyle = ButtonStyle(
    fixedSize:
        MaterialStateProperty.resolveWith((states) => const Size(150.0, 11.0)));

TextStyle questionStyle = const TextStyle(
  fontSize: 22,
  fontStyle: FontStyle.italic,
  fontWeight: FontWeight.bold,
);

enum Answer { first, second, third, fourth, fifth }
