import 'package:flutter/cupertino.dart';
import 'package:my_ios_app/model/shop/product.dart';

class Favorites with ChangeNotifier {
  List<Product> products = [];

  Favorites();

  int get count => products.length;

  List<Product> get allFavs => products;

  void addToFavorites(Product product) {
    products.add(product);
    notifyListeners();
  }
}
