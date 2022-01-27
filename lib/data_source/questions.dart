class Questions{
  var list = <Question>[
    Question(
        question: "What is Flutter?",
        suggestion1: "Programming language",
        suggestion2: "Free and open-source mobile UI framework ",
        suggestion3: "Pet's name",
        suggestion4: "Android native developing framework",
        suggestion5: "IOS native developing framework"
    ),
    Question(
        question: "Flutter's programming language:",
        suggestion1: "Java",
        suggestion2: "Kotlin",
        suggestion3: "C++",
        suggestion4: "Dart",
        suggestion5: "JavaScript"
    ),
    Question(
        question: "Flutter's virtual machine feature:",
        suggestion1: "Hot reload",
        suggestion2: "Declarative UI",
        suggestion3: "Widgets",
        suggestion4: "Dart",
        suggestion5: "Multiplatform"
    ),
    Question(
        question: "What platforms does Flutter earn on?",
        suggestion1: "Desktop",
        suggestion2: "Android",
        suggestion3: "Web",
        suggestion4: "IOS",
        suggestion5: "All of listed"
    ),
    Question(
        question: "In Flutter how do you can use Android api?",
        suggestion1: "Can't",
        suggestion2: "Can directly from Dart Code",
        suggestion3: "Can, writing code in android dir",
        suggestion4: "Can only with Android Studio",
        suggestion5: "Can using plugin"
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

  Question({
    required this.question,
    required this.suggestion1,
    required this.suggestion2,
    required this.suggestion3,
    required this.suggestion4,
    required this.suggestion5,
  });
}