import '../const/constants.dart';

class Questions {
  var list = <Question>[
    Question(
      question: "What is the Flutter?",
      suggestion1: "Programming language",
      suggestion2: "Free and open-source mobile UI framework ",
      suggestion3: "Pet's name",
      suggestion4: "Android native developing framework",
      suggestion5: "IOS native developing framework",
      answer: Answer.second,
    ),
    Question(
      question: "Flutter uses:",
      suggestion1: "Java",
      suggestion2: "Kotlin",
      suggestion3: "C++",
      suggestion4: "Dart",
      suggestion5: "JavaScript",
      answer: Answer.fourth,
    ),
    Question(
      question: "Flutter's feature:",
      suggestion1: "Hot reload",
      suggestion2: "Declarative UI",
      suggestion3: "Widgets",
      suggestion4: "Dart",
      suggestion5: "Multiplatform",
      answer: Answer.first,
    ),
    Question(
      question: "Platforms supported by Flutter?",
      suggestion1: "Desktop",
      suggestion2: "Android",
      suggestion3: "Web",
      suggestion4: "IOS",
      suggestion5: "All listed",
      answer: Answer.fifth,
    ),
    Question(
      question:
      "In Flutter how do you can use Android native functions, like Intent?",
      suggestion1: "Can't",
      suggestion2: "Yes, directly from Dart Code",
      suggestion3: "Yes, by writing Kotlin code in Android directory",
      suggestion4: "Yes, only with Android Studio",
      suggestion5: "Yes, by using plugin",
      answer: Answer.fifth,
    ),
  ];

}

class Question {
  String question;
  String suggestion1;
  String suggestion2;
  String suggestion3;
  String suggestion4;
  String suggestion5;
  Answer answer;

  Question({
    required this.question,
    required this.suggestion1,
    required this.suggestion2,
    required this.suggestion3,
    required this.suggestion4,
    required this.suggestion5,
    required this.answer,
  });

  @override
  String toString() => question;

  String getSuggestion(Answer answer) {
    switch (answer) {
      case Answer.first:
        return suggestion1;
      case Answer.second:
        return suggestion2;
      case Answer.third:
        return suggestion3;
      case Answer.fourth:
        return suggestion4;
      case Answer.fifth:
        return suggestion5;
    }
  }
}