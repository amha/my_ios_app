// Copyright 2021 Amha Mogus. All rights reserved.
// Use of this source code is governed by the MIT license that can be found
// in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_ios_app/views/shop/shop_launcher.dart';
import 'package:my_ios_app/views/wallet/wallet_launcher.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.white,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 110,
              width: screenWidth,
              margin: EdgeInsets.fromLTRB(0, 50, 0, 8),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Declarative UI Demo',
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -2),
                  ),
                  Text(
                    'Familiar experiences to showcase flutter.',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -1),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                _demoRow(
                    context, 'Wallet', 'Payments', 'assets/wallet_action.png'),
                _demoRow(
                    context, 'Shop', 'mCommerce', 'assets/shopping_action.png'),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _demoRow(
      BuildContext context, String name, String description, String imagePath) {
    Widget route;
    switch (name) {
      case 'Wallet':
        route = WalletLauncher();
        break;
      case 'Shop':
        route = ShopLauncher();
        break;
    }
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(CupertinoPageRoute(builder: (context) => route));
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                child: Hero(tag: '$name', child: Image.asset(imagePath)),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: SizedBox(
                  height: 140,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  name,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20),
                                ),
                                Text(
                                  description,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: CupertinoColors.systemGrey),
                                )
                              ],
                            ),
                            Icon(CupertinoIcons.chevron_right)
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Divider(
                          height: 1,
                          thickness: 0.5,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
