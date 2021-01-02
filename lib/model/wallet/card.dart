// Copyright 2021 Amha Mogus. All rights reserved.
// Use of this source code is governed by the MIT license that can be found
// in the LICENSE file.

class PaymentCard {
  final String cardNumber;
  final String nameOnCard;
  final String cardArt;
  final String type;

  PaymentCard(this.cardNumber, this.nameOnCard, this.cardArt, this.type);

  String get image => this.cardArt;
}
