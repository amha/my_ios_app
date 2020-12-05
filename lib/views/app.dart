import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_ios_app/views/settings.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
          middle: Text('Apple Music'),
          leading: CupertinoButton(
            child: Icon(
              CupertinoIcons.settings,
            ),
            onPressed: () {
              Navigator.of(context)
                  .push(CupertinoPageRoute(builder: (context) => Settings()));
            },
          )),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 120,
            ),
            Container(
              height: 280,
              width: 280,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/album.jpeg',
                    fit: BoxFit.cover,
                  )),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 10,
                        blurRadius: 30,
                        color: Color(0x22000000))
                  ]),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 16),
              child: Column(
                children: [
                  Text(
                    'Chill Piano',
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                  ),
                  Text(
                    'Playlist for Amha',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                        color: CupertinoColors.link),
                  ),
                  Text(
                    'UPDATED TODAY',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: CupertinoColors.placeholderText),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CupertinoButton(
                  color: CupertinoColors.systemGrey5,
                  child: Text(
                    '   Play  ',
                    style: TextStyle(
                        color: CupertinoColors.activeBlue,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    showCupertinoModalPopup(
                        context: context,
                        builder: (context) => CupertinoActionSheet(
                              title: Text('Shuffle Playlist'),
                              message: Text(
                                  'what is the purpose of building out these things...'),
                              actions: [
                                CupertinoActionSheetAction(
                                  child: Text('Never shuffle'),
                                  onPressed: () {
                                    print('never shuffle pressed');
                                    Navigator.of(context).pop();
                                  },
                                ),
                                CupertinoActionSheetAction(
                                  child: Text('Always shuffle'),
                                  onPressed: () {
                                    print('always option pressed');
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                              cancelButton: CupertinoActionSheetAction(
                                child: Text('Cancel'),
                                onPressed: () {
                                  print('Cancel pressed');
                                  Navigator.of(context).pop();
                                },
                              ),
                            ));
                  },
                ),
                CupertinoButton(
                  color: CupertinoColors.systemGrey5,
                  child: Text(
                    'Shuffle',
                    style: TextStyle(
                        color: CupertinoColors.activeBlue,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                )
              ],
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Center(
                child: Text(
                  'Songs handpicked to help you relax and unwind while exploring new dimensions of your musical identity.',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: CupertinoColors.secondaryLabel),
                ),
              ),
            ),
            Divider(
              height: .3,
              indent: 32,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 0, 10),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: CupertinoColors.secondaryLabel,
                      height: 50,
                      width: 40,
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '  Name of Song',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          '   Name of Song',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Icon(
                      CupertinoIcons.add,
                      color: CupertinoColors.activeBlue,
                    ),
                  )
                ],
              ),
            ),
            Divider(
              height: .3,
              indent: 32,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 0, 10),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: CupertinoColors.secondaryLabel,
                      height: 50,
                      width: 40,
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '  Name of Song',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          '   Name of Song',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Icon(
                      CupertinoIcons.add,
                      color: CupertinoColors.activeBlue,
                    ),
                  )
                ],
              ),
            ),
            Divider(
              height: .3,
              indent: 32,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 0, 10),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: CupertinoColors.secondaryLabel,
                      height: 50,
                      width: 40,
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '  Name of Song',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          '   Name of Song',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Icon(
                      CupertinoIcons.add,
                      color: CupertinoColors.activeBlue,
                    ),
                  )
                ],
              ),
            ),
            Divider(
              height: .3,
              indent: 32,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 0, 10),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: CupertinoColors.secondaryLabel,
                      height: 50,
                      width: 40,
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '  Name of Song',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          '   Name of Song',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Icon(
                      CupertinoIcons.add,
                      color: CupertinoColors.activeBlue,
                    ),
                  )
                ],
              ),
            ),
            Divider(
              height: .3,
              indent: 32,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 0, 10),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: CupertinoColors.secondaryLabel,
                      height: 50,
                      width: 40,
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '  Name of Song',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          '   Name of Song',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Icon(
                      CupertinoIcons.add,
                      color: CupertinoColors.activeBlue,
                    ),
                  )
                ],
              ),
            ),
            Divider(
              height: .3,
              indent: 32,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 0, 10),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: CupertinoColors.secondaryLabel,
                      height: 50,
                      width: 40,
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '  Name of Song',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          '   Name of Song',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Icon(
                      CupertinoIcons.add,
                      color: CupertinoColors.activeBlue,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
