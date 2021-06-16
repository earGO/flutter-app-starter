import 'package:academind_quiz/application_logic..dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show TargetPlatform;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestions() {
    print('Answer chosen');
  }

  @override
  Widget build(BuildContext context) {
    var platform = Theme.of(context).platform;

    return platform == TargetPlatform.iOS
        ? CupertinoApp(
            home: CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                middle: Text('Cupertino Page'),
              ),
              child: ApplicationLogic(), //this should be cupertino-specific
            ),
          )
        : MaterialApp(
            home: Scaffold(
              appBar: AppBar(
                title: Text('Quiz app'),
              ),
              body: ApplicationLogic(), //this should be android specific
            ),
          );
  }
}
