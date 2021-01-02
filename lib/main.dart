// Copyright 2021 Amha Mogus. All rights reserved.
// Use of this source code is governed by the MIT license that can be found
// in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_ios_app/resources/styles.dart';
import 'package:my_ios_app/views/app.dart';
import 'package:provider/provider.dart';

import 'model/shop/favorite_products.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => Favorites())],
      child: CupertinoApp(
        title: 'iOS Demo',
        debugShowCheckedModeBanner: false,
        theme: Styles.lightTheme,
        home: App(),
      ),
    );
  }
}
