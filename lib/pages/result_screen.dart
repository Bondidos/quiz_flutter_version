import 'package:android_intent_plus/android_intent.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:platform/platform.dart';

import '../constants.dart';

class ResultScreen extends StatelessWidget {
  final List<String> result;

  const ResultScreen({Key? key, required this.result}) : super(key: key);

  void shareResult() {
    final message = result.first + result.last;
    final _intent = AndroidIntent(
      action: 'android.intent.action.SEND',
      type: 'text/plain',
      arguments: {
        'android.intent.extra.SUBJECT': 'Quiz results',
        'android.intent.extra.TEXT' : message,
      }
    );
    _intent.launch();
  }

  Future<bool> _onWillPop(BuildContext context) async{
    bool? exitResult = await showDialog(
      builder: (BuildContext context) => exitDialog(context),
      context: context,
    );
    return exitResult ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _onWillPop(context),
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const Text('Result'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(result.first),
                IconButton(
                  onPressed: () {
                    print(SystemChannels.platform);
                  },
                  icon: const Icon(Icons.restart_alt_sharp),
                ),
                IconButton(
                  onPressed: () {
                    if(const LocalPlatform().isAndroid){
                      shareResult();
                    }
                  },
                  icon: const Icon(Icons.share),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.close),
                ),
              ],
            ),
          )),
    );
  }
}
