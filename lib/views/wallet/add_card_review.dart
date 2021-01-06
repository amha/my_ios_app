// Copyright 2021 Amha Mogus. All rights reserved.
// Use of this source code is governed by the MIT license that can be found
// in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_ios_app/model/wallet/card.dart';
import 'package:my_ios_app/resources/standard_components.dart';
import 'package:my_ios_app/resources/styles.dart';

import 'card_details.dart';

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
        child: Column(children: <Widget>[
          formHeader('$title', '$description'),
          Expanded(
            flex: 3,
            child: Container(
                height: 200,
                width: screenWidth,
                margin: EdgeInsets.fromLTRB(64, 0, 64, 16),
                decoration: BoxDecoration(
                    color: CupertinoColors.black,
                    borderRadius: BorderRadius.all(Radius.circular(20)))),
          ),
          Divider(height: 1, thickness: .5),
          Expanded(
            flex: 1,
            child: Container(
              height: 60,
              child: Row(
                children: <Widget>[
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Text('Name', style: Styles.formLabel(themeData)),
                      )),
                  Expanded(flex: 3, child: Text(widget.userName)),
                ],
              ),
            ),
          ),
          Divider(height: 1, thickness: .5, indent: 36),
          Expanded(
            flex: 1,
            child: Container(
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
          ),
          Divider(height: 1, thickness: .5, indent: 36),
          Expanded(
            flex: 1,
            child: Container(
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
          ),
          Divider(height: 1, thickness: .5, indent: 36),
          Expanded(
            flex: 1,
            child: Container(
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
          ),
          Divider(height: 1, thickness: .5),
          Expanded(
              flex: 2,
              child: Container(
                  alignment: Alignment.center,
                  child: SizedBox(
                      height: 60,
                      width: 300,
                      child: CupertinoButton.filled(
                        borderRadius: Styles.buttonShape(themeData),
                        onPressed: () {
                          PaymentCard newCard = PaymentCard(
                              widget.cardNumber,
                              widget.userName,
                              'assets/wallet/card.png',
                              'Debit');
                          showCupertinoDialog(
                              context: context,
                              builder: (context) => CupertinoPopupSurface(
                                  isSurfacePainted: true,
                                  child: CupertinoActivityIndicator(
                                      animating: true)));
                          Future.delayed(const Duration(seconds: 2), () {
                            Navigator.of(context).pop();
                            Navigator.of(context).push(CupertinoPageRoute(
                                builder: (context) => CardDetails(newCard)));
                          });
                        },
                        child:
                            Text('Submit', style: Styles.buttonText(themeData)),
                      ))))
        ]));
  }
}
