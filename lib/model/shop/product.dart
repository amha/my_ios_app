// Copyright 2021 Amha Mogus. All rights reserved.
// Use of this source code is governed by the MIT license that can be found
// in the LICENSE file.

class Product {
  String name;
  String description;
  String imageReference;
  bool favorite;
  String price;
  String sellerName;
  int numberOfSales;
  double rating;

  Product(this.name, this.imageReference, this.description, this.price,
      this.favorite);
}
