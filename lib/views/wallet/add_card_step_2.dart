// Copyright 2021 Amha Mogus. All rights reserved.
// Use of this source code is governed by the MIT license that can be found
// in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_ios_app/resources/styles.dart';
import 'package:my_ios_app/resources/standard_components.dart';
import 'package:my_ios_app/views/wallet/add_card_review.dart';

class AddCardStep2 extends StatefulWidget {
  final String userName;
  final String cardNumber;

  AddCardStep2(this.userName, this.cardNumber);

  @override
  State<StatefulWidget> createState() {
    return _AddCardStep2State();
  }
}

class _AddCardStep2State extends State<AddCardStep2> {
  TextEditingController _securityCodeController = TextEditingController();
  String date = '';
  bool isSecurityCodeValid = false;

  @override
  void initState() {
    super.initState();
    _securityCodeController.addListener(checkSecurityCode);
  }

  @override
  void dispose() {
    _securityCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeData = CupertinoTheme.of(context);

    final String title = 'Card details';
    final String description = 'Enter your card information.';

    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
            backgroundColor: Styles.navBarBackgroundLight(themeData),
            border: Styles.navBarBorder(themeData),
            automaticallyImplyLeading: true,
            previousPageTitle: 'Back',
            trailing: GestureDetector(
                onTap: () {
                  if (isSecurityCodeValid) {
                    Navigator.of(context).push(CupertinoPageRoute(
                        builder: (context) => ReviewCardDetails(
                            widget.userName,
                            widget.cardNumber,
                            date,
                            _securityCodeController.text)));
                  }
                },
                child: Text('Next',
                    style: isSecurityCodeValid
                        ? Styles.enabledNavigationText(themeData)
                        : Styles.disabledNavigationText(themeData)))),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
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
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(24, 0, 0, 0),
                              child: Text('Expiration Date',
                                  style: Styles.formLabel(themeData)),
                            )),
                        Expanded(
                            flex: 3,
                            child: GestureDetector(
                                onTap: () {
                                  showPicker(context);
                                },
                                child:
                                    Text('$date', textAlign: TextAlign.left))),
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 24),
                              child: Text('Security Code',
                                  style: Styles.formLabel(themeData)),
                            )),
                        Expanded(
                            flex: 3,
                            child: CupertinoTextField(
                                controller: _securityCodeController,
                                maxLength: 3,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.0,
                                      color: const Color(0xFFFFFFFF)),
                                ),
                                autofocus: false,
                                textInputAction: TextInputAction.done,
                                keyboardType: TextInputType.number)),
                      ],
                    ),
                  ),
                  Divider(height: 1, thickness: .5),
                ]),
          ),
        ));
  }

  void checkSecurityCode() {
    String value = _securityCodeController.text;
    RegExp reggie = RegExp(r'[A-Z][a-z]');
    if (!reggie.hasMatch(value) && value.length == 3) {
      setState(() {
        isSecurityCodeValid = true;
      });
    } else {
      setState(() {
        isSecurityCodeValid = false;
      });
    }
  }

  void showPicker(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (context) => Container(
        color: CupertinoColors.white,
        height: 350,
        child: CupertinoDatePicker(
            initialDateTime: DateTime.now(),
            mode: CupertinoDatePickerMode.date,
            minimumYear: 2020,
            maximumYear: 2028,
            onDateTimeChanged: (val) {
              setState(() {
                date = getMonth(val.month) + " - " + val.year.toString();
              });
            }),
      ),
    );
  }

  String getMonth(int numericMonth) {
    String month = '';
    switch (numericMonth) {
      case 1:
        month = 'January';
        break;
      case 2:
        month = 'February';
        break;
      case 3:
        month = 'March';
        break;
      case 4:
        month = 'April';
        break;
      case 5:
        month = 'May';
        break;
      case 6:
        month = 'June';
        break;
      case 7:
        month = 'July';
        break;
      case 8:
        month = 'August';
        break;
      case 9:
        month = 'September';
        break;
      case 10:
        month = 'October';
        break;
      case 11:
        month = 'November';
        break;
      default:
        month = 'December';
        break;
    }
    return month;
  }
}
