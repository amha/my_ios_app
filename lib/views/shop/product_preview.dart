import 'package:flutter/cupertino.dart';
import 'package:my_ios_app/model/shop/favorities.dart';
import 'package:my_ios_app/model/shop/product.dart';
import 'package:my_ios_app/views/shop/product_detail.dart';
import 'package:provider/provider.dart';

class ProductPreview extends StatefulWidget {
  final Product productModel;

  ProductPreview(this.productModel);

  @override
  State<StatefulWidget> createState() {
    return _ProductPreviewState();
  }
}

class _ProductPreviewState extends State<ProductPreview> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(CupertinoPageRoute(
                builder: (context) => ProductDetail(
                      productData: this.widget.productModel,
                    )));
          },
          child: Container(
            width: 200,
            height: 133,
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Image.asset(
              this.widget.productModel.imageReference,
              fit: BoxFit.fill,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              this.widget.productModel.favorite =
                  !this.widget.productModel.favorite;
              if (this.widget.productModel.favorite) {
                context
                    .read<Favorites>()
                    .addToFavorites(this.widget.productModel);
              }
            });
          },
          child: Container(
            padding: EdgeInsets.all(8),
            child: Icon(this.widget.productModel.favorite
                ? CupertinoIcons.heart_fill
                : CupertinoIcons.heart),
          ),
        )
      ],
    );
  }
}
