// Copyright 2021 Amha Mogus. All rights reserved.
// Use of this source code is governed by the MIT license that can be found
// in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_ios_app/resources/styles.dart';
import 'package:my_ios_app/resources/wallet_components.dart';

class CardFormStep2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CardFormStep2State();
  }
}

class _CardFormStep2State extends State<CardFormStep2> {
  TextEditingController _securityCodeController = TextEditingController();
  String date = '';

  @override
  void initState() {
    super.initState();
    _securityCodeController.addListener(securityCodeValidator);
  }

  @override
  void dispose() {
    _securityCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeData = CupertinoTheme.of(context);
    print('build');

    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
            backgroundColor: Styles.navBarBackgroundLight(themeData),
            border: Styles.navBarBorder(themeData),
            automaticallyImplyLeading: true,
            previousPageTitle: 'Back',
            trailing: GestureDetector(
                onTap: () {},
                child: Text('Next',
                    style: Styles.disabledNavigationText(themeData)))),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                formHeader('$title', '$description'),
                Divider(height: 1, thickness: .5),
                Container(
                  height: 60,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            child: Text('Expiration Date',
                                style: Styles.formLabel(themeData)),
                          )),
                      Expanded(
                          flex: 1,
                          child: GestureDetector(
                              onTap: () {
                                showPicker(context);
                              },
                              child: Text('$date'))),
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
                      Expanded(
                          flex: 3,
                          child: CupertinoTextField(
                              controller: _securityCodeController,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 0.0, color: const Color(0xFFFFFFFF)),
                              ),
                              autofocus: false,
                              textInputAction: TextInputAction.done,
                              keyboardType: TextInputType.number)),
                    ],
                  ),
                ),
                Divider(height: 1, thickness: .5),
              ]),
        ));
  }

  void securityCodeValidator() {
    //TODO
  }

  void showPicker(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (context) => Container(
        color: CupertinoColors.white,
        height: 400,
        child: CupertinoDatePicker(
            initialDateTime: DateTime.now(),
            mode: CupertinoDatePickerMode.date,
            minimumYear: 2020,
            maximumYear: 2028,
            onDateTimeChanged: (val) {
              setState(() {
                date = val.toString();
              });
            }),
      ),
    );
  }

  final String title = 'Card details';
  final String description = 'Enter your card information.';
}
