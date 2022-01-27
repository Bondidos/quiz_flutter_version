import 'package:flutter/material.dart';
import 'package:quiz_flutter_version/pages/first_page.dart';
import 'package:quiz_flutter_version/util/theme_helper.dart';

void main() {
  runApp(const Quiz());
}
class Quiz extends StatelessWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeHelper().setTheme(),
      title: "Quiz",
      home: const FirstPage(),
    );
  }
}

