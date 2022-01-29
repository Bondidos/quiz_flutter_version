import 'package:flutter/material.dart';

ButtonStyle qButtonStyle = ButtonStyle(
    fixedSize:
        MaterialStateProperty.resolveWith((states) => const Size(150.0, 11.0)));

TextStyle questionStyle = const TextStyle(
  fontSize: 22,
  fontStyle: FontStyle.italic,
  fontWeight: FontWeight.bold,
);

AlertDialog exitDialog(BuildContext context) => AlertDialog(
      title: const Text('Please confirm'),
      content: const Text('Do you want to exit the app?'),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: const Text('No'),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(true),
          child: const Text('Yes'),
        ),
      ],
    );

enum Answer { first, second, third, fourth, fifth }
