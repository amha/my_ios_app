// Copyright 2021 Amha Mogus. All rights reserved.
// Use of this source code is governed by the MIT license that can be found
// in the LICENSE file.

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

  void removeProduct(Product product) {
    products.removeWhere((products) => products.name == product.name);
    notifyListeners();
  }
}
