// Copyright 2021 Amha Mogus. All rights reserved.
// Use of this source code is governed by the MIT license that can be found
// in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_ios_app/resources/styles.dart';
import 'package:my_ios_app/resources/wallet_components.dart';

import 'add_card_step_2.dart';

class AddCardStep1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AddCardStep1State();
  }
}

class _AddCardStep1State extends State<AddCardStep1> {
  TextEditingController _userNameController = TextEditingController();
  TextEditingController _cardNumberController = TextEditingController();

  bool isUserNameValid = false;
  bool isCardNumberValid = false;

  @override
  void initState() {
    super.initState();
    _userNameController.addListener(checkUserName);
    _cardNumberController.addListener(checkCardNumber);
  }

  @override
  void dispose() {
    _userNameController.dispose();
    _cardNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeData = CupertinoTheme.of(context);

    final String title = 'Card details';
    final String description = 'Verify and complete your card information';

    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
            backgroundColor: Styles.navBarBackgroundLight(themeData),
            border: Styles.navBarBorder(themeData),
            automaticallyImplyLeading: true,
            previousPageTitle: 'Back',
            trailing: GestureDetector(
                onTap: () {
                  if (isCardNumberValid) {
                    Navigator.of(context).push(CupertinoPageRoute(
                        builder: (context) => AddCardStep2(
                            _userNameController.text,
                            _cardNumberController.text)));
                  }
                },
                child: Text('Next',
                    style: isCardNumberValid
                        ? Styles.enabledNavigationText(themeData)
                        : Styles.disabledNavigationText(themeData)))),
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
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            child: Text('Name',
                                style: Styles.formLabel(themeData)),
                          )),
                      Expanded(
                        flex: 3,
                        child: CupertinoTextField(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 0.0, color: const Color(0xFFFFFFFF)),
                            ),
                            autofocus: false,
                            controller: _userNameController,
                            clearButtonMode: OverlayVisibilityMode.editing,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.text),
                      ),
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
                      Expanded(
                          flex: 3,
                          child: CupertinoTextField(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 0.0, color: const Color(0xFFFFFFFF)),
                              ),
                              autofocus: false,
                              maxLength: 16,
                              controller: _cardNumberController,
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.number)),
                    ],
                  ),
                ),
                Divider(height: 1, thickness: .5),
              ]),
        ));
  }

  void checkUserName() {
    String input = _userNameController.text;
    RegExp reggie = RegExp(r'[0-9]');
    if (input.length > 5 && !reggie.hasMatch(input)) {
      isUserNameValid = true;
    } else {
      isUserNameValid = false;
    }
  }

  void checkCardNumber() {
    String input = _cardNumberController.text;
    if (input.length > 5) {
      setState(() {
        isCardNumberValid = true;
      });
    } else {
      setState(() {
        isCardNumberValid = false;
      });
    }
  }
}
