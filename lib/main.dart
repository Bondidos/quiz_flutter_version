import 'package:flutter/material.dart';
import 'package:quiz_flutter_version/pages/first_page.dart';

void main() {
  runApp(const Quiz());
}
class Quiz extends StatelessWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Quiz",
      home: FirstPage(),
    );
  }
}

