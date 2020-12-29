import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_ios_app/resources/wallet_components.dart';
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
    return CupertinoFullscreenDialogTransition(
      primaryRouteAnimation: _primary,
      secondaryRouteAnimation: _secondary,
      linearTransition: false,
      child: CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: Text('Add Card'),
            backgroundColor: CupertinoTheme.of(context).barBackgroundColor,
            automaticallyImplyLeading: true,
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
                          color: CupertinoColors.black,
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
                          color: CupertinoColors.black,
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
                          color: Color(0xffFFA700),
                          margin: EdgeInsets.symmetric(horizontal: 16),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(
                          'Music App',
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
                          color: CupertinoColors.systemGreen,
                          margin: EdgeInsets.symmetric(horizontal: 16),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(
                          'Shopping App',
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
