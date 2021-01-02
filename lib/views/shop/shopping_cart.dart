// Copyright 2021 Amha Mogus. All rights reserved.
// Use of this source code is governed by the MIT license that can be found
// in the LICENSE file.

import 'package:flutter/cupertino.dart';

class ShoppingCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabView(
      builder: (BuildContext context) {
        return CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: Text('Cart'),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(
                    CupertinoIcons.cart,
                    color: CupertinoColors.black,
                    size: 80,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      'You \'shopping cart is empty',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )),
                Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      'Looking for ideas?',
                      style: TextStyle(fontWeight: FontWeight.normal),
                    )),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 16),
                  height: 56,
                  width: 200,
                  child: CupertinoButton.filled(
                    onPressed: () {},
                    borderRadius: BorderRadius.all(Radius.circular(24)),
                    child: Text(
                      'See what\' trending',
                      style: TextStyle(
                          color: CupertinoColors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
