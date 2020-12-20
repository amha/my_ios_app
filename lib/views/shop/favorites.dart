import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:my_ios_app/model/shop/favorite_products.dart';
import 'package:my_ios_app/model/shop/product.dart';
import 'package:provider/provider.dart';

class FavoritesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabView(
      builder: (BuildContext context) {
        return CupertinoPageScaffold(
          child: context.watch<Favorites>().count == 0
              ? Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Icon(
                          CupertinoIcons.heart_slash,
                          color: CupertinoColors.black,
                          size: 80,
                        ),
                      ),
                      Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 64, vertical: 8),
                          child: Text(
                            'Sign in to save your favorite items and shops.',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                            textAlign: TextAlign.center,
                          )),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 16),
                        height: 56,
                        width: 200,
                        child: CupertinoButton(
                          onPressed: () {},
                          color: CupertinoColors.black,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                                color: CupertinoColors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : Container(
                  padding: EdgeInsets.all(16),
                  child: GridView.builder(
                    scrollDirection: Axis.vertical,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 5.0,
                      crossAxisSpacing: 5.0,
                    ),
                    itemCount: context.watch<Favorites>().count,
                    itemBuilder: (context, index) {
                      return Container(
                          margin: EdgeInsets.symmetric(vertical: 8),
                          child: _favoriteProductCard(
                              context.watch<Favorites>().products[index]));
                    },
                  ),
                ),
          navigationBar: CupertinoNavigationBar(
            middle: Text('Favorites'),
          ),
        );
      },
    );
  }

  Widget _favoriteProductCard(Product product) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          border: Border.all(color: CupertinoColors.systemGrey3, width: .3)),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Image.asset(
              product.imageReference,
              fit: BoxFit.cover,
              height: 200,
              width: 200,
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Center(
                    child: Text(
                      product.name,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Container(
                  child: Center(
                    child: Text(
                      product.price,
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
