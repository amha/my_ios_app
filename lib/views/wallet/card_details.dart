import 'package:flutter/cupertino.dart';

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
    _primary = AnimationController(vsync: this, duration: Duration(seconds: 1));
    _animationPrimary = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: _primary, curve: Curves.easeOut));

    //Secondary
    _secondary =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _animationSecondary = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: _secondary, curve: Curves.easeOut));
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
        navigationBar: CupertinoNavigationBar(
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
              margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
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
            )
          ],
        ),
      ),
    );
  }
}
