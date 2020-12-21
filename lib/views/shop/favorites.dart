import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_ios_app/model/shop/favorite_products.dart';
import 'package:my_ios_app/model/shop/product.dart';
import 'package:provider/provider.dart';

class FavoritesTab extends StatelessWidget {
  final double radius = 16.0;

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
                  padding: EdgeInsets.all(8),
                  child: GridView.builder(
                    scrollDirection: Axis.vertical,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 5.0,
                        crossAxisSpacing: 5.0,
                        childAspectRatio: 0.6),
                    itemCount: context.watch<Favorites>().count,
                    itemBuilder: (context, index) {
                      return ConstrainedBox(
                          constraints: BoxConstraints(
                              maxHeight: 500,
                              minHeight: 400,
                              maxWidth: 250,
                              minWidth: 200),
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
          color: CupertinoColors.white,
          boxShadow: [
            BoxShadow(blurRadius: 6, spreadRadius: 1, color: Color(0x22000000))
          ],
          borderRadius: BorderRadius.all(Radius.circular(radius)),
          border: Border.all(color: CupertinoColors.systemGrey, width: .2)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(radius),
                topRight: Radius.circular(radius)),
            child: Image.asset(
              product.imageReference,
              fit: BoxFit.fitHeight,
              height: 230,
            ),
          ),
          Container(
            height: 104,
            width: 200,
            color: CupertinoColors.white,
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        CupertinoIcons.star_fill,
                        color: Colors.black,
                        size: 18,
                      ),
                      Icon(
                        CupertinoIcons.star_fill,
                        color: Colors.black,
                        size: 18,
                      ),
                      Icon(
                        CupertinoIcons.star_fill,
                        color: Colors.black,
                        size: 18,
                      ),
                      Icon(
                        CupertinoIcons.star_lefthalf_fill,
                        color: Colors.black,
                        size: 18,
                      ),
                      Text('(574 Reviews)')
                    ],
                  ),
                  Text(
                    'free shipping available',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        backgroundColor: CupertinoColors.systemGrey3),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        product.price,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      Icon(
                        CupertinoIcons.ellipsis_vertical_circle_fill,
                        color: CupertinoColors.black,
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
