class PaymentCard {
  final String cardNumber;
  final String nameOnCard;
  final String cardArt;
  final String type;

  PaymentCard(this.cardNumber, this.nameOnCard, this.cardArt, this.type);

  String get image => this.cardArt;
}
