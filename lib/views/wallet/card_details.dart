import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_ios_app/views/wallet/transaction_detail.dart';

class CardDetails extends StatefulWidget {
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
    //Primaty
    _primary =
        AnimationController(vsync: this, duration: Duration(milliseconds: 400));
    _animationPrimary = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: _primary, curve: Curves.easeInOut));

    //Secondary
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
          border: Border.all(color: CupertinoColors.systemGrey6),
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
              _primary.reverse();
            },
            child: Text('Done'),
          ),
        ),
        child: Column(
          children: [
            Container(
              height: 230,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.fromLTRB(16, 100, 16, 16),
              decoration: BoxDecoration(
                  color: CupertinoColors.activeBlue,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 4,
                    child: Text(
                      'Liberty Bank Credit Card',
                      style: TextStyle(
                          color: CupertinoColors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          shadows: [
                            Shadow(
                                color: CupertinoColors.black,
                                offset: Offset.zero,
                                blurRadius: 23)
                          ]),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '****5938',
                          style: TextStyle(
                              color: CupertinoColors.white,
                              shadows: [
                                Shadow(
                                    color: CupertinoColors.black,
                                    offset: Offset.zero,
                                    blurRadius: 23)
                              ]),
                        ),
                        Image.asset('assets/wallet/acceptanceMark.png')
                      ],
                    ),
                  )
                ],
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: transactionRow(
                        'Wolt', 'Amha Pay', 'May 8, 2020', '\$40'),
                  ),
                  Divider(
                    height: .4,
                    indent: 16,
                    endIndent: 16,
                    thickness: .3,
                    color: Colors.black26,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: transactionRow(
                        'Wolt', 'Amha Pay', 'May 8, 2020', '\$40'),
                  ),
                  Divider(
                    height: .4,
                    indent: 16,
                    endIndent: 16,
                    thickness: .3,
                    color: Colors.black26,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: transactionRow(
                        'Wolt', 'Amha Pay', 'May 8, 2020', '\$40'),
                  ),
                  Divider(
                    height: .4,
                    indent: 16,
                    endIndent: 16,
                    thickness: .3,
                    color: Colors.black26,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: transactionRow(
                        'Wolt', 'Amha Pay', 'May 8, 2020', '\$40'),
                  )
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
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
            CupertinoPageRoute(builder: (context) => TransactionDetail()));
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
    );
  }
}
