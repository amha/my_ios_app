import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_ios_app/model/wallet/card.dart';
import 'package:my_ios_app/views/wallet/card_settings.dart';
import 'package:my_ios_app/views/wallet/transaction_detail.dart';

class CardDetails extends StatefulWidget {
  final PaymentCard card;

  CardDetails(this.card);

  @override
  State<StatefulWidget> createState() {
    return _CardDetailsState();
  }
}

class _CardDetailsState extends State<CardDetails>
    with TickerProviderStateMixin {
  AnimationController _primary, _secondary;
  Animation<double> _animationPrimary, _animationSecondary;

  @override
  void initState() {
    _primary =
        AnimationController(vsync: this, duration: Duration(milliseconds: 400));
    _animationPrimary = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: _primary, curve: Curves.easeInOut));

    _secondary =
        AnimationController(vsync: this, duration: Duration(milliseconds: 400));
    _animationSecondary = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: _secondary, curve: Curves.easeInOut));
    _primary.forward();
    super.initState();
  }

  @override
  void dispose() {
    _primary.dispose();
    _secondary.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoFullscreenDialogTransition(
      primaryRouteAnimation: _primary,
      secondaryRouteAnimation: _secondary,
      linearTransition: false,
      child: CupertinoPageScaffold(
        backgroundColor: CupertinoColors.systemGrey6,
        navigationBar: CupertinoNavigationBar(
          actionsForegroundColor: Colors.black,
          border: Border.all(color: CupertinoColors.systemGrey6),
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
              _primary.reverse();
            },
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Done',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.start,
              ),
            ),
          ),
          trailing: CupertinoButton(
            onPressed: () {
              Navigator.of(context).push(CupertinoPageRoute(
                  builder: (context) => CardSettings(this.widget.card)));
            },
            child: Icon(
              CupertinoIcons.slider_horizontal_3,
              color: Colors.black,
            ),
          ),
        ),
        child: Column(
          children: [
            Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.fromLTRB(16, 30, 16, 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 10,
                        blurRadius: 30,
                        color: Color(0x22000000))
                  ]),
              child: Hero(
                tag: this.widget.card.image,
                child: Image.asset(
                  this.widget.card.image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Text(
                'Latest Transactions',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: CupertinoColors.black),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Column(
                children: [
                  transactionRow(
                      'Coffee Maker', 'Wallet', 'Dec 12, 2020', '\$12.00'),
                  Divider(
                    height: .4,
                    indent: 16,
                    endIndent: 16,
                    thickness: .3,
                    color: Colors.black26,
                  ),
                  transactionRow(
                      'Juicer person', 'Debit Card', 'Dec 13, 2020', '\$23.00'),
                  Divider(
                    height: .4,
                    indent: 16,
                    endIndent: 16,
                    thickness: .3,
                    color: Colors.black26,
                  ),
                  transactionRow(
                      'Food delivery', 'Wallet', 'Dec 11, 2020', '\$53.00')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget transactionRow(String merchantName, String paymentMode,
      String paymentDate, String amount) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(CupertinoPageRoute(
              builder: (context) =>
                  TransactionDetail(amount, merchantName, paymentMode)));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 4, 4, 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$merchantName',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontSize: 18),
                  ),
                  Text(
                    '$paymentMode',
                    style: TextStyle(
                        fontSize: 16,
                        color: CupertinoColors.systemGrey,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '$paymentDate',
                    style: TextStyle(
                        fontSize: 16,
                        color: CupertinoColors.systemGrey,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '$amount',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                CupertinoButton(
                  onPressed: () {},
                  child: Icon(
                    CupertinoIcons.chevron_forward,
                    color: CupertinoColors.black,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
