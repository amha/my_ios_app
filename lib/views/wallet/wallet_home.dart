import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_ios_app/views/wallet/card_details.dart';

class WalletHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WalletHomeState();
  }
}

class _WalletHomeState extends State<WalletHome> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey6,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 80,
              margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Wallet',
                    style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -2),
                  ),
                  CupertinoButton(
                    onPressed: () {},
                    child: Icon(
                      CupertinoIcons.add_circled_solid,
                      color: CupertinoColors.black,
                      size: 36,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 400,
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              width: MediaQuery.of(context).size.width,
              clipBehavior: Clip.values[3],
              decoration: BoxDecoration(
                  color: CupertinoColors.systemGrey5,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Column(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(24, 24, 24, 0),
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Text('WHAT\'S NEW'),
                          ),
                          Text(
                            'Now send money to the whole family.',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w700),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/wallet/money.png',
                              width: 320,
                              fit: BoxFit.fill,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(16),
                      color: CupertinoColors.systemGrey5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Lean more about cash'),
                          Text(
                            'START NOW',
                            style: TextStyle(
                                color: CupertinoTheme.of(context).primaryColor,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                //TODO add card
              },
              child: Container(
                margin: EdgeInsets.all(16),
                child: Stack(
                  children: [
                    Container(
                      height: 500,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Container(
                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: CupertinoColors.black,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Digital Cash',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(PageRouteBuilder(
                            opaque: false,
                            pageBuilder: (context, _, __) {
                              return CardDetails();
                            }));
                      },
                      child: Container(
                        height: 230,
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(16),
                        margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                        decoration: BoxDecoration(
                            color: CupertinoColors.activeBlue,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 4,
                              child: Text(
                                'Liberty Bank Credit Card',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    shadows: [
                                      Shadow(
                                          color: Colors.black54,
                                          offset: Offset.zero,
                                          blurRadius: 23)
                                    ]),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '****5938',
                                    style: TextStyle(
                                        color: Colors.white,
                                        shadows: [
                                          Shadow(
                                              color: Colors.black54,
                                              offset: Offset.zero,
                                              blurRadius: 23)
                                        ]),
                                  ),
                                  Image.asset(
                                      'assets/wallet/acceptanceMark.png')
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
