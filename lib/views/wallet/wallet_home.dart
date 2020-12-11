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
      backgroundColor: CupertinoColors.systemGrey5,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGrey5,
        leading: Text(
          'Wallet',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          textAlign: TextAlign.center,
        ),
        trailing: CupertinoButton(
          child: Icon(
            CupertinoIcons.add_circled_solid,
            color: CupertinoColors.black,
          ),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,
              margin: EdgeInsets.all(16),
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: CupertinoColors.systemGrey2,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
            GestureDetector(
              onTap: () {
                print('card 1 tapped');
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
