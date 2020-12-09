import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_ios_app/views/shop/launcher.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            color: CupertinoColors.black,
            child: Center(
              child: Text(
                'iOS Flutter DEMO',
                style: TextStyle(color: CupertinoColors.white, fontSize: 26),
              ),
            ),
          ),
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Text(
                'Apple Music',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
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
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Text(
                'Apple To Do',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
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
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: RaisedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      CupertinoPageRoute(builder: (context) => ShopLauncher()));
                },
                child: Text(
                  'Shop',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
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
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Text(
                'Apple Wallet',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
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
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Text(
                'Other...',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
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
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: CupertinoButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Icon(
                  CupertinoIcons.clear_circled_solid,
                  color: CupertinoColors.activeOrange,
                  size: 60,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
