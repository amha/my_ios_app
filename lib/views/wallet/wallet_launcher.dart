import 'package:flutter/cupertino.dart';
import 'package:my_ios_app/views/wallet/wallet_home.dart';

import 'wallet_home.dart';

class WalletLauncher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.white,
        border: Border.all(color: CupertinoColors.white),
      ),
      child: Container(
        margin: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Hero(
                tag: 'Wallet',
                child: Image.asset(
                  'assets/wallet_action.png',
                  width: 300,
                  height: 300,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                  child: Text(
                'Discover new music\n Listen to your favorite artists',
                textAlign: TextAlign.center,
              )),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  CupertinoButton.filled(
                    borderRadius: BorderRadius.all(Radius.circular(24)),
                    onPressed: () {
                      Navigator.of(context).push(CupertinoPageRoute(
                          builder: (context) => WalletHome()));
                    },
                    child: Text('Open'),
                  ),
                  CupertinoButton(
                    borderRadius: BorderRadius.all(Radius.circular(24)),
                    onPressed: () {},
                    child: Text('Go back'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
