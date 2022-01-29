import 'package:flutter/material.dart';
import 'package:quiz_flutter_version/pages/first_page.dart';
import 'package:quiz_flutter_version/pages/result_screen.dart';
import 'package:quiz_flutter_version/util/theme_helper.dart';

void main() {
  runApp(const Quiz());
}
class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => QuizState();
}

class QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    var themeHelper = ThemeHelper(this);

    return MaterialApp(
      theme: themeHelper.setTheme(),
      title: "Quiz",
      routes: {
        '/': (context) => const FirstPage(),
        'resultPage': (context) => const ResultScreen(),
      },
      // home: const FirstPage(),
    );
  }
}

