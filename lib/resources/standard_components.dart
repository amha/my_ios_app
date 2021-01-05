// Copyright 2021 Amha Mogus. All rights reserved.
// Use of this source code is governed by the MIT license that can be found
// in the LICENSE file.

import 'package:flutter/cupertino.dart';

Widget formHeader(String title, String description) {
  return Container(
    height: 120,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$title',
          style: TextStyle(
              fontSize: 32, fontWeight: FontWeight.w600, letterSpacing: -1),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('$description', style: TextStyle()),
        )
      ],
    ),
  );
}
