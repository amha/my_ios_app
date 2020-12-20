import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_ios_app/model/shop/product.dart';

class ProductDetail extends StatefulWidget {
  final Product productData;

  ProductDetail({this.productData});

  @override
  State<StatefulWidget> createState() {
    return _ProductDetailsState();
  }
}

class _ProductDetailsState extends State<ProductDetail> {
  bool isFavorite = false;

  @override
  void initState() {
    isFavorite = this.widget.productData.favorite;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: 18,
              ),
            ),
          ),
          trailing: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CupertinoButton(
                onPressed: () {},
                padding: EdgeInsets.zero,
                child: Icon(
                  CupertinoIcons.share,
                  color: Colors.white,
                ),
              ),
              CupertinoButton(
                onPressed: () {
                  setState(() {
                    if (isFavorite) {
                      this.isFavorite = false;
                    } else {
                      this.isFavorite = true;
                    }
                  });
                },
                child: isFavorite
                    ? Icon(
                        CupertinoIcons.heart_fill,
                        color: CupertinoColors.destructiveRed,
                      )
                    : Icon(
                        CupertinoIcons.heart,
                        color: CupertinoColors.white,
                      ),
              )
            ],
          )),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 500,
              child: Hero(
                tag: this.widget.productData.imageReference,
                child: Container(
                  child: Image.asset(
                    this.widget.productData.imageReference,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 24, horizontal: 8),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: CircleAvatar(
                      backgroundColor: Colors.pink,
                      radius: 20,
                      child: Text(
                        'A',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('AMHA SHOPPA'),
                        Text(
                          '493 Sales',
                          style: TextStyle(fontSize: 14, color: Colors.black54),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
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
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
              child: Text(
                this.widget.productData.description,
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 22,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    this.widget.productData.price,
                    style: TextStyle(
                        color: Colors.pink[900],
                        fontWeight: FontWeight.w700,
                        fontSize: 22),
                  ),
                  Text(
                    'One 4 available',
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.normal,
                        fontSize: 16),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Free shipping',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'to United States',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  child: RaisedButton(
                    padding: EdgeInsets.all(16),
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40))),
                    onPressed: () {
                      print('added to card');
                    },
                    child: Text(
                      'Add to Cart',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 200,
              margin: EdgeInsets.fromLTRB(16, 16, 0, 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(
                      height: .4,
                      indent: 1,
                      thickness: .2,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Item Details',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          CupertinoIcons.hand_raised,
                          size: 18,
                        ),
                        Text('  Hand made')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          CupertinoIcons.leaf_arrow_circlepath,
                          size: 18,
                        ),
                        Text('  Includes recycled material')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          CupertinoIcons.pencil_circle,
                          size: 18,
                        ),
                        Text('  Personalizable')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          CupertinoIcons.tortoise_fill,
                          size: 18,
                        ),
                        Text('  Ships late')
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 480,
              margin: EdgeInsets.fromLTRB(16, 16, 0, 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(
                      height: .4,
                      indent: 1,
                      thickness: .2,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Shipping & Policies',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 8, 8, 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ready to ship in 3-5 days',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        Text(
                          'Shipping upgrades available in the cart',
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 14),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Divider(
                            height: .3,
                            thickness: .3,
                            indent: 0,
                            endIndent: 16,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          'Gift options',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        Text(
                          'Gift message available',
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 14),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Divider(
                            height: .3,
                            thickness: .3,
                            indent: 0,
                            endIndent: 16,
                            color: Colors.grey,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Text(
                                'Payment options',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                            ),
                            Image.asset('assets/shop/acceptance.png')
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Divider(
                            height: .3,
                            thickness: .3,
                            indent: 0,
                            endIndent: 16,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          'Refunds & exchanges',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        Text(
                          'Contact me in 10 days and we can sort our your refund request.'
                          '\n\nI do not accept exchanges.',
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
