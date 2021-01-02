// Copyright 2021 Amha Mogus. All rights reserved.
// Use of this source code is governed by the MIT license that can be found
// in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransactionDetail extends StatelessWidget {
  final String amount;
  final String merchantName;
  final String paymentType;

  TransactionDetail(this.amount, this.merchantName, this.paymentType);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey6,
      navigationBar: CupertinoNavigationBar(
        border: Border.all(color: CupertinoColors.systemGrey6),
        backgroundColor: CupertinoColors.systemGrey6,
        automaticallyImplyLeading: true,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: Text(
              this.amount,
              style: TextStyle(fontSize: 80, fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 4),
            child: Text(
              this.merchantName,
              style: TextStyle(
                  fontSize: 18,
                  color: CupertinoColors.systemGrey,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 4),
            child: Text(
              'May 8, 2020, 7:22PM',
              style: TextStyle(
                  fontSize: 18,
                  color: CupertinoColors.systemGrey,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            margin: EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: CupertinoColors.white,
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        'Status Approved',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      )),
                  Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(this.paymentType)),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Divider(
                      height: .4,
                      thickness: .3,
                      color: Colors.black26,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700)),
                      Text(this.amount,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700))
                    ],
                  ),
                ],
              ),
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
              child: Text('Report Issue'),
            ),
          )
        ],
      ),
    );
  }
}
