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
}
