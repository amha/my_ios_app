import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_ios_app/views/app.dart';
import 'package:provider/provider.dart';

import 'model/shop/favorites.dart';

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
        theme: CupertinoThemeData(
            brightness: Brightness.light,
            primaryColor: CupertinoColors.systemPink,
            barBackgroundColor: CupertinoColors.systemGrey6,
            textTheme: CupertinoTextThemeData(
                actionTextStyle: TextStyle(
                    color: CupertinoColors.systemPink,
                    fontWeight: FontWeight.w600))),
        home: App(),
      ),
    );
  }
}
