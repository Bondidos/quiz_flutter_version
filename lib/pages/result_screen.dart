import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String result;
  const ResultScreen({Key? key,required this.result}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result'),
      ),
      body: Center(
        child: Column(

           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(result),
            IconButton(
                onPressed: (){

                },
                icon: const Icon(Icons.restart_alt_sharp),
            ),
            IconButton(
              onPressed: (){

              },
              icon: const Icon(Icons.share),
            ),
            IconButton(
              onPressed: (){

              },
              icon: const Icon(Icons.close),
            ),
          ],
        ),
      )
    );
  }
}
