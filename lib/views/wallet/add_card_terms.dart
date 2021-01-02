// Copyright 2021 Amha Mogus. All rights reserved.
// Use of this source code is governed by the MIT license that can be found
// in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:my_ios_app/resources/wallet_components.dart';

class PresentTerms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          automaticallyImplyLeading: true,
          backgroundColor: CupertinoTheme.of(context).barBackgroundColor,
        ),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  color: CupertinoTheme.of(context).barBackgroundColor),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    formHeader('SuperPay',
                        'Add cards to send money anywhere in the world.'),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: SizedBox(
                        height: 60,
                        width: 300,
                        child: CupertinoButton.filled(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          onPressed: () {},
                          child: Text('Continue'),
                        ),
                      ),
                    )
                  ],
                ))
          ],
        ));
  }
}
