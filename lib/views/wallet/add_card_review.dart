// Copyright 2021 Amha Mogus. All rights reserved.
// Use of this source code is governed by the MIT license that can be found
// in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_ios_app/resources/styles.dart';
import 'package:my_ios_app/resources/wallet_components.dart';

class ReviewCardDetails extends StatefulWidget {
  final String userName;
  final String cardNumber;
  final String expirationDate;
  final String securityCode;

  ReviewCardDetails(
      this.userName, this.cardNumber, this.expirationDate, this.securityCode);

  @override
  State<StatefulWidget> createState() {
    return _ReviewCardDetailsState();
  }
}

class _ReviewCardDetailsState extends State<ReviewCardDetails> {
  @override
  Widget build(BuildContext context) {
    final themeData = CupertinoTheme.of(context);
    double screenWidth = MediaQuery.of(context).size.width;

    final String title = 'Confirm Card';
    final String description = 'Does everything look right?';

    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
            backgroundColor: Styles.navBarBackgroundLight(themeData),
            border: Styles.navBarBorder(themeData),
            automaticallyImplyLeading: true,
            previousPageTitle: 'Back',
            trailing: GestureDetector(
                onTap: () {
                  //TODO: pop until wallet home
                },
                child: Text('Cancel',
                    style: Styles.enabledNavigationText(themeData)))),
        child: Container(
            width: screenWidth,
            child: Column(children: <Widget>[
              formHeader('$title', '$description'),
              Container(
                  height: 200,
                  width: screenWidth,
                  margin: EdgeInsets.fromLTRB(64, 0, 64, 16),
                  decoration: BoxDecoration(
                      color: CupertinoColors.black,
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
              Divider(height: 1, thickness: .5),
              Container(
                height: 60,
                child: Row(
                  children: <Widget>[
                    Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child:
                              Text('Name', style: Styles.formLabel(themeData)),
                        )),
                    Expanded(flex: 3, child: Text(widget.userName)),
                  ],
                ),
              ),
              Divider(height: 1, thickness: .5, indent: 36),
              Container(
                height: 60,
                child: Row(
                  children: <Widget>[
                    Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Text('Card Number',
                              style: Styles.formLabel(themeData)),
                        )),
                    Expanded(flex: 3, child: Text(widget.cardNumber)),
                  ],
                ),
              ),
              Divider(height: 1, thickness: .5, indent: 36),
              Container(
                height: 60,
                child: Row(
                  children: <Widget>[
                    Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 24, right: 0),
                          child: Text('Expiration Date',
                              style: Styles.formLabel(themeData)),
                        )),
                    Expanded(flex: 3, child: Text(widget.expirationDate)),
                  ],
                ),
              ),
              Divider(height: 1, thickness: .5, indent: 36),
              Container(
                height: 60,
                child: Row(
                  children: <Widget>[
                    Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Text('Security Code',
                              style: Styles.formLabel(themeData)),
                        )),
                    Expanded(flex: 3, child: Text(widget.securityCode)),
                  ],
                ),
              ),
              Divider(height: 1, thickness: .5),
              Flexible(
                  child: Container(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 60,
                        width: 300,
                        child: CupertinoButton.filled(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            onPressed: () {
                              //TODO: create new card, add to wallet, and launch card detail
                            },
                            child: Text('Submit')),
                      )))
            ])));
  }
}
