import 'package:flutter/cupertino.dart';

abstract class Styles {
  static CupertinoThemeData lightTheme = CupertinoThemeData(
      brightness: Brightness.light,
      primaryColor: CupertinoColors.systemPink,
      barBackgroundColor: CupertinoColors.systemGrey6,
      textTheme: CupertinoTextThemeData(
        actionTextStyle: TextStyle(
            color: CupertinoColors.systemPink, fontWeight: FontWeight.w600),
      ));
}
