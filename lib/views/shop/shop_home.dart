import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  'assets/shop/1.png',
  'assets/shop/2.png',
  'assets/shop/3.png',
  'assets/shop/4.png',
  'assets/shop/5.png',
  'assets/shop/6.png'
];

class ShopHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ShopHomeState();
  }
}

class _ShopHomeState extends State<ShopHome> {
  final CupertinoTabController _controller = CupertinoTabController();
  int tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      controller: _controller,
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(CupertinoIcons.home),
          ),
          BottomNavigationBarItem(
            label: 'Favorites',
            icon: Icon(CupertinoIcons.heart),
          ),
          BottomNavigationBarItem(
              label: 'For you', icon: Icon(CupertinoIcons.person)),
          BottomNavigationBarItem(
              label: 'Cart', icon: Icon(CupertinoIcons.shopping_cart))
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        // setState(() {
        //   tabIndex = index;
        // });
        return tabs[index];
      },
    );
  }

  List<CupertinoTabView> tabs = [
    CupertinoTabView(
      builder: (BuildContext context) {
        return CupertinoPageScaffold(
          backgroundColor: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.all(16),
                  width: MediaQuery.of(context).size.width,
                  child: CupertinoSearchTextField(
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                  ),
                ),
                Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.pink[50],
                  child: Column(
                    children: [
                      Container(
                        child: Text(
                          'Welcome to the world\'s most imaginative marketplace',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w300),
                          textAlign: TextAlign.center,
                        ),
                        margin: EdgeInsets.all(12),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 8),
                        alignment: Alignment.center,
                        child: Text(
                          'Sign up now to save your favorite items and get personalized recommendations',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 60,
                        width: 120,
                        child: RaisedButton(
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,
                        child: FlatButton(
                          child: Text(
                            'I already have an account',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(CupertinoPageRoute(
                                builder: (context) => ShopHome()));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Container(
                        child: Text('Section title'),
                      ),
                      Container(
                        height: 100,
                        width: 90,
                        child: CarouselSlider(
                          options: CarouselOptions(),
                          items: imgList
                              .map((e) => Container(
                                    width: 90,
                                    height: 90,
                                    child: Center(
                                      child: Image.asset(
                                        e,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ))
                              .toList(),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    ),
    CupertinoTabView(
      builder: (BuildContext context) {
        return CupertinoPageScaffold(
          backgroundColor: Colors.amberAccent,
          child: Container(
            child: Text('Favorites'),
          ),
        );
      },
    ),
    CupertinoTabView(
      builder: (BuildContext context) {
        return CupertinoPageScaffold(
          backgroundColor: Colors.pinkAccent,
          child: Container(
            child: Text('Cart'),
          ),
        );
      },
    ),
    CupertinoTabView(
      builder: (BuildContext context) {
        return CupertinoPageScaffold(
          backgroundColor: Colors.blueAccent,
          child: Container(
            child: Text('Profile'),
          ),
        );
      },
    )
  ];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
