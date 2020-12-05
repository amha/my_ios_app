import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_ios_app/views/app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'iOS Demo',
      theme: CupertinoThemeData(primaryColor: CupertinoColors.activeBlue),
      home: App(),
    );
  }
}
