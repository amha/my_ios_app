// Copyright 2021 Amha Mogus. All rights reserved.
// Use of this source code is governed by the MIT license that can be found
// in the LICENSE file.

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

  static Border navBarBorder(CupertinoThemeData themeData) {
    return Border.all(width: 0.0, color: CupertinoColors.systemGrey6);
  }

  static Color navBarBackgroundLight(CupertinoThemeData themeData) {
    return CupertinoColors.white;
  }

  static TextStyle formLabel(CupertinoThemeData themeData) {
    return TextStyle(fontSize: 18, fontWeight: FontWeight.w500);
  }

  static TextStyle disabledNavigationText(CupertinoThemeData themeData) {
    return TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: CupertinoColors.systemGrey3);
  }

  static TextStyle enabledNavigationText(CupertinoThemeData themeData) {
    return TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: CupertinoColors.systemPink);
  }
}
