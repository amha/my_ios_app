import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_ios_app/views/shop/shop_home.dart';

class ShopLauncher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return CupertinoPageScaffold(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.centerRight,
              width: screenWidth,
              child: FlatButton(
                child: Text(
                  'Continue as guest',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                      CupertinoPageRoute(builder: (context) => ShopHome()));
                },
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Text(
                'Shop',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              alignment: Alignment.center,
              child: Image.asset('assets/shop/logo.png'),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  child: Text(
                    'Welcome to the world\'s most imaginative marketplace',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w300),
                    textAlign: TextAlign.center,
                  ),
                  margin: EdgeInsets.all(12),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: SizedBox(
                    width: screenWidth,
                    height: 50,
                    child: RaisedButton(
                      padding: EdgeInsets.all(16),
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      onPressed: () {
                        Navigator.of(context).push(CupertinoPageRoute(
                            builder: (context) => ShopHome()));
                      },
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: screenWidth,
                  child: FlatButton(
                    child: Text(
                      'I already have an account',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                          CupertinoPageRoute(builder: (context) => ShopHome()));
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
