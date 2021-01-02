// Copyright 2021 Amha Mogus. All rights reserved.
// Use of this source code is governed by the MIT license that can be found
// in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_ios_app/model/wallet/card.dart';

class CardSettings extends StatefulWidget {
  final PaymentCard card;

  CardSettings(this.card);

  @override
  State<StatefulWidget> createState() {
    return _CardSettingsState();
  }
}

class _CardSettingsState extends State<CardSettings> {
  /// toggle values
  bool _historySwitch = false;
  bool _notificationSwitch = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double buttonWidth = (screenWidth / 2.0) - 16;

    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey6,
      navigationBar: CupertinoNavigationBar(
        actionsForegroundColor: CupertinoColors.black,
        backgroundColor: CupertinoColors.systemGrey6,
        border: Border.all(width: 0.0, color: CupertinoColors.systemGrey6),
        automaticallyImplyLeading: true,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 120,
              margin: EdgeInsets.fromLTRB(16, 30, 16, 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Hero(
                tag: this.widget.card.image,
                child: Image.asset(
                  this.widget.card.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              'Spender Credit Card',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
            ),
            Text(
              'Spender Credit Card',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: buttonWidth,
                  child: CupertinoButton(
                    color: CupertinoColors.white,
                    onPressed: () {},
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4),
                          child: Icon(
                            CupertinoIcons.phone,
                            color: CupertinoColors.black,
                          ),
                        ),
                        Text('Call',
                            style: TextStyle(
                                color: CupertinoColors.black,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: buttonWidth,
                  child: CupertinoButton(
                    color: CupertinoColors.white,
                    onPressed: () {},
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4),
                          child: Icon(
                            CupertinoIcons.square_arrow_up,
                            color: CupertinoColors.black,
                          ),
                        ),
                        Text(
                          'Website',
                          style: TextStyle(
                              color: CupertinoColors.black,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: CupertinoColors.white,
              ),
              height: 80,
              margin: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: CircleAvatar(
                      radius: 22,
                      backgroundColor: CupertinoColors.activeBlue,
                      child: Text(
                        'A',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Amha Bank',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Amha Bank',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      height: 40,
                      child: CupertinoButton(
                        padding: EdgeInsets.zero,
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: CupertinoColors.systemGrey5,
                        onPressed: () {},
                        child: Text(
                          'Install',
                          style:
                              TextStyle(color: Colors.blueAccent, fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(4),
              child: Text(
                'CARD INFORMATION',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              width: screenWidth,
              height: 170,
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Card Number',
                              style: TextStyle(fontWeight: FontWeight.w600)),
                          Text('****5938')
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Divider(
                      height: .4,
                      thickness: .3,
                      color: Colors.black26,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Express Transit',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          Text('Off')
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Divider(
                      height: .4,
                      thickness: .3,
                      color: Colors.black26,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: CupertinoButton(
                      onPressed: () {},
                      child: Text(
                        'Express Transit Settings',
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(4),
              child: Text(
                'TRANSACTIONS',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              width: screenWidth,
              height: 110,
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Show history',
                              style: TextStyle(fontWeight: FontWeight.w500)),
                          CupertinoSwitch(
                            onChanged: (value) {
                              setState(() {
                                value
                                    ? _historySwitch = true
                                    : _historySwitch = false;
                              });
                            },
                            value: _historySwitch,
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Divider(
                      height: .4,
                      thickness: .3,
                      color: Colors.black26,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Allow Notifications',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          CupertinoSwitch(
                            onChanged: (value) {
                              setState(() {
                                value
                                    ? _notificationSwitch = true
                                    : _notificationSwitch = false;
                              });
                            },
                            value: _notificationSwitch,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              width: screenWidth,
              height: 110,
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                    child: CupertinoButton(
                      onPressed: () {},
                      child: Text(
                        'Privacy policy',
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Divider(
                      height: .4,
                      thickness: .3,
                      color: Colors.black26,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: CupertinoButton(
                      onPressed: () {},
                      child: Text(
                        'Terms of use',
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              width: MediaQuery.of(context).size.width,
              height: 50,
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: CupertinoButton(
                onPressed: () {},
                child: Text(
                  'Delete card',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
