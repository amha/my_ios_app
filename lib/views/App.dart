import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_ios_app/views/music/music_home.dart';
import 'package:my_ios_app/views/shop/launcher.dart';
import 'package:my_ios_app/views/wallet/wallet_home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 80,
            margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
            width: screenWidth,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'iOS Demo',
                  style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -2),
                ),
                CupertinoButton(
                  onPressed: () {},
                  child: Icon(
                    CupertinoIcons.info_circle_fill,
                    color: CupertinoColors.black,
                    size: 32,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: CupertinoColors.white,
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: screenWidth,
                  child: Center(
                    child: SizedBox(
                      height: 90,
                      width: screenWidth,
                      child: CupertinoButton(
                        onPressed: () {
                          Navigator.of(context).push(CupertinoPageRoute(
                              builder: (context) => MusicHome()));
                        },
                        child: Text(
                          'Music',
                          style: CupertinoTheme.of(context)
                              .textTheme
                              .actionTextStyle,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: .4,
                  indent: 16,
                  endIndent: 16,
                  color: Colors.black26,
                ),
                Container(
                  height: 100,
                  width: screenWidth,
                  child: SizedBox(
                    height: 90,
                    width: screenWidth,
                    child: Center(
                      child: CupertinoButton(
                        onPressed: () {
                          Navigator.of(context).push(CupertinoPageRoute(
                              builder: (context) => ShopLauncher()));
                        },
                        child: Text(
                          'Mobile Shopping',
                          style: CupertinoTheme.of(context)
                              .textTheme
                              .actionTextStyle,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: .4,
                  indent: 16,
                  endIndent: 16,
                  color: Colors.black26,
                ),
                Container(
                  height: 100,
                  width: screenWidth,
                  child: Center(
                    child: SizedBox(
                      height: 90,
                      width: screenWidth,
                      child: CupertinoButton(
                        onPressed: () {
                          Navigator.of(context).push(CupertinoPageRoute(
                              builder: (context) => WalletHome()));
                        },
                        child: Text(
                          'Digital Wallet ',
                          style: CupertinoTheme.of(context)
                              .textTheme
                              .actionTextStyle,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: .4,
                  indent: 16,
                  endIndent: 16,
                  color: Colors.black26,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
