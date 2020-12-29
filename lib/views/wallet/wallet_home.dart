import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_ios_app/model/wallet/card.dart';
import 'package:my_ios_app/resources/my_cards.dart';
import 'package:my_ios_app/views/wallet/add_card_type_selection.dart';
import 'package:my_ios_app/views/wallet/card_details.dart';

class WalletHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WalletHomeState();
  }
}

class _WalletHomeState extends State<WalletHome> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey6,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 80,
              margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Wallet',
                    style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -2),
                  ),
                  CupertinoButton(
                    onPressed: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          opaque: false,
                          pageBuilder: (context, _, __) {
                            return SelectCardType();
                          }));
                    },
                    child: Icon(
                      CupertinoIcons.add_circled_solid,
                      color: CupertinoColors.black,
                      size: 36,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 400,
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              width: MediaQuery.of(context).size.width,
              clipBehavior: Clip.values[3],
              decoration: BoxDecoration(
                  color: CupertinoColors.systemGrey5,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Column(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(24, 16, 24, 0),
                      color: CupertinoColors.black,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Text(
                              'WHAT\'S NEW',
                              style: TextStyle(color: CupertinoColors.white),
                            ),
                          ),
                          Text(
                            'Send Money Anywhere',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: CupertinoColors.white),
                          ),
                          Container(
                            child: Center(
                              child: Image.asset(
                                'assets/wallet/earth.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(16),
                      color: CupertinoColors.systemGrey5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Lean more about money'),
                          Text(
                            'START NOW',
                            style: TextStyle(
                                color: CupertinoTheme.of(context).primaryColor,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Stack(
                children: [
                  Container(
                    height: 350,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Positioned(top: 0, child: _buildCard(cardsInWallet[1])),
                  Positioned(bottom: 0, child: _buildCard(cardsInWallet[0])),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCard(PaymentCard card) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(PageRouteBuilder(
            opaque: false,
            pageBuilder: (context, _, __) {
              return CardDetails(card);
            }));
      },
      child: Container(
          height: 230,
          width: MediaQuery.of(context).size.width - 32,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: Image.asset(card.image, fit: BoxFit.fill)),
    );
  }
}
