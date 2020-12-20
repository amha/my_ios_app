import 'package:my_ios_app/model/shop/product.dart';

final List<String> colorProductImages = [
  'assets/shop/1.png',
  'assets/shop/2.png',
  'assets/shop/3.png',
  'assets/shop/4.png',
  'assets/shop/5.png',
  'assets/shop/6.png'
];

final List<String> triangleProductImages = [
  'assets/shop/triangleProduct1.png',
  'assets/shop/triangleProduct2.png',
  'assets/shop/triangleProduct3.png',
  'assets/shop/triangleProduct4.png',
];

final List<String> polygonProductImages = [
  'assets/shop/polygon1.png',
  'assets/shop/polygon2.png',
  'assets/shop/polygon3.png',
  'assets/shop/polygon4.png',
];

final List<Product> allProducts = [
  Product('Grey Triangle', triangleProductImages[0],
      'Greyscale triangle for a more subdued feel.', '\$12.00', false),
  Product('Pink Triangle', triangleProductImages[1],
      'Warm. Inviting. Pleasantly Pink.', '\$12.00', false),
  Product('Blue Triangle', triangleProductImages[2],
      'Depth & delight with a surprising twist.', '\$12.00', false),
  Product('Red Triangle', triangleProductImages[3],
      'Red triangles suitable for a mid-life crisis. ', '\$12.00', false),
  Product('Red Polly', polygonProductImages[0],
      'Red polygons for increased redness. ', '\$15.00', false),
  Product('West Coast Polly', polygonProductImages[1],
      'Designed for polygon lovers and Lakers fans. ', '\$15.00', false),
  Product(
      'Polly Polly',
      polygonProductImages[2],
      'Sentimental & earthy, this polygon speaks to the mindful. To the hopeful. ',
      '\$15.00',
      false),
  Product(
      'Future in 5',
      polygonProductImages[3],
      'Futuristic & sober. Take your polygon game to the next level. ',
      '\$15.00',
      false),
  Product('Gradient 1', colorProductImages[0],
      'Gradient for the indecisive person', '\$5.99', false),
  Product('Gradient 2', colorProductImages[1],
      'Gradient for the indecisive person', '\$5.99', false),
  Product('Gradient 3', colorProductImages[2],
      'Gradient for the indecisive person', '\$5.99', false),
  Product('Gradient 4', colorProductImages[3],
      'Gradient for the indecisive person', '\$5.99', false),
  Product('Gradient 5', colorProductImages[4],
      'Gradient for the indecisive person', '\$5.99', false),
  Product('Gradient 6', colorProductImages[5],
      'Gradient for the indecisive person', '\$5.99', false),
];
