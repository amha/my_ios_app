// Copyright 2021 Amha Mogus. All rights reserved.
// Use of this source code is governed by the MIT license that can be found
// in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_ios_app/resources/standard_components.dart';
import 'package:my_ios_app/resources/styles.dart';
import 'package:my_ios_app/views/wallet/add_card_terms.dart';

class SelectCardType extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SelectCardTypeState();
  }
}

class _SelectCardTypeState extends State<SelectCardType>
    with TickerProviderStateMixin {
  AnimationController _primary, _secondary;
  Animation<double> _animationPrimary, _animationSecondary;

  @override
  void initState() {
    _primary =
        AnimationController(vsync: this, duration: Duration(milliseconds: 400));
    _animationPrimary = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: _primary, curve: Curves.easeInOut));

    _secondary =
        AnimationController(vsync: this, duration: Duration(milliseconds: 400));
    _animationSecondary = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: _secondary, curve: Curves.easeInOut));
    _primary.forward();
    super.initState();
  }

  @override
  void dispose() {
    _primary.dispose();
    _secondary.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Reference to custom styles
    final CupertinoThemeData themeData = CupertinoTheme.of(context);

    return CupertinoFullscreenDialogTransition(
      primaryRouteAnimation: _primary,
      secondaryRouteAnimation: _secondary,
      linearTransition: false,
      child: CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            backgroundColor: Styles.navBarBackgroundLight(themeData),
            leading: CupertinoButton(
                padding: EdgeInsets.all(0),
                onPressed: () {
                  _primary.reverse();
                  Navigator.of(context).pop();
                },
                child: Text('Cancel',
                    style: Styles.enabledNavigationText(themeData))),
            border: Styles.navBarBorder(themeData),
          ),
          child: Column(
            children: [
              formHeader(
                  'Card Type', 'Choose the type of card you want to add.'),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(16),
                child: Text(
                  'PAYMENTS',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: CupertinoColors.secondaryLabel),
                ),
              ),
              Divider(
                height: 1,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      CupertinoPageRoute(builder: (context) => PresentTerms()));
                },
                child: SizedBox(
                  height: 64,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 40,
                          width: 60,
                          decoration: BoxDecoration(
                            color: CupertinoColors.black,
                            borderRadius: Styles.roundedCorners(themeData),
                          ),
                          child: Icon(CupertinoIcons.control, color: CupertinoColors.white, size: 28),
                          margin: EdgeInsets.symmetric(horizontal: 16),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(
                          'Credit or Debit Card',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Expanded(
                          flex: 1, child: Icon(CupertinoIcons.chevron_right))
                    ],
                  ),
                ),
              ),
              Divider(
                height: 1,
                indent: 24,
              ),
              GestureDetector(
                onTap: () {},
                child: SizedBox(
                  height: 64,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 40,
                          width: 60,
                          decoration: BoxDecoration(
                            color: CupertinoColors.black,
                            borderRadius: Styles.roundedCorners(themeData),
                          ),
                          child: Icon(CupertinoIcons.person, color: CupertinoColors.white, size: 28),
                          margin: EdgeInsets.symmetric(horizontal: 16),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(
                          'Digital Account',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Expanded(
                          flex: 1, child: Icon(CupertinoIcons.chevron_right))
                    ],
                  ),
                ),
              ),
              Divider(
                height: 1,
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(16),
                child: Text(
                  'FROM APPS',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: CupertinoColors.secondaryLabel),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: SizedBox(
                  height: 64,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 40,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Color(0xffd9a5d9),
                            borderRadius: Styles.roundedCorners(themeData),
                          ),
                          child: Icon(CupertinoIcons.money_dollar, color: CupertinoColors.black, size: 30),
                          margin: EdgeInsets.symmetric(horizontal: 16),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(
                          'Super Bank App ',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Expanded(
                          flex: 1, child: Icon(CupertinoIcons.chevron_right))
                    ],
                  ),
                ),
              ),
              Divider(
                height: 1,
                indent: 24,
              ),
              GestureDetector(
                onTap: () {},
                child: SizedBox(
                  height: 64,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 40,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Color(0xffD8F8EB),
                            borderRadius: Styles.roundedCorners(themeData),
                          ),
                          child: Icon(CupertinoIcons.cart, color: CupertinoColors.black, size: 26),
                          margin: EdgeInsets.symmetric(horizontal: 16),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(
                          'Shopping Demo',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Expanded(
                          flex: 1, child: Icon(CupertinoIcons.chevron_right))
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
