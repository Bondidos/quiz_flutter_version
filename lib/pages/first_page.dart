import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Question 1'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          color: Colors.amber,
          child: Column(

          ),
        ),
      ),
    );
  }
}
