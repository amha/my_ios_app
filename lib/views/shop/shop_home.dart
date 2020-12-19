import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_ios_app/model/shop/product.dart';
import 'package:my_ios_app/resources/shop_catalog.dart';
import 'package:my_ios_app/views/shop/product_preview.dart';

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
                _buildProductRow(
                    context,
                    'Colors',
                    'Choose your favorite gradient pattern',
                    colorProductImages),
                _buildProductRow(context, 'Triangles', 'Get your fav trigon',
                    triangleProductImages),
                _buildProductRow(context, 'Pentagons',
                    '5 sides to express yourself', polygonProductImages),
              ],
            ),
          ),
        );
      },
    ),
    CupertinoTabView(
      builder: (BuildContext context) {
        return CupertinoPageScaffold(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(
                    CupertinoIcons.heart_slash,
                    color: Colors.black,
                    size: 80,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 64, vertical: 8),
                    child: Text(
                      'Sign in to save your favorite items and shops.',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      textAlign: TextAlign.center,
                    )),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 16),
                  height: 56,
                  width: 200,
                  child: RaisedButton(
                    onPressed: () {},
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
          navigationBar: CupertinoNavigationBar(
            middle: Text('Favorites'),
          ),
        );
      },
    ),
    CupertinoTabView(
      builder: (BuildContext context) {
        return CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: Text('You'),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Center(
                child: ProductPreview(
                    Product('goat', true, colorProductImages[0]))),
          ),
        );
      },
    ),
    CupertinoTabView(
      builder: (BuildContext context) {
        return CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: Text('Cart'),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(
                    CupertinoIcons.cart,
                    color: Colors.black,
                    size: 80,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      'You \'shopping cart is empty',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )),
                Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      'Looking for ideas?',
                      style: TextStyle(fontWeight: FontWeight.normal),
                    )),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 16),
                  height: 56,
                  width: 200,
                  child: RaisedButton(
                    onPressed: () {},
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Text(
                      'See what\' trending',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
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

Widget _buildProductRow(BuildContext context, String name, String description,
    List<String> productImages) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 16),
    height: 200,
    width: MediaQuery.of(context).size.width,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                child: Text(
                  description,
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
        ),
        Container(
          height: 140,
          width: MediaQuery.of(context).size.width,
          child: CarouselSlider.builder(
              options: CarouselOptions(
                  viewportFraction: 0.4,
                  aspectRatio: 3 / 2,
                  enableInfiniteScroll: false,
                  reverse: false,
                  initialPage: 1,
                  pageSnapping: true,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  disableCenter: false),
              itemCount: productImages.length,
              itemBuilder: (BuildContext context, int index) => Hero(
                  tag: productImages[index],
                  child: ProductPreview(
                      Product('name', false, productImages[index])))),
        ),
      ],
    ),
  );
}
