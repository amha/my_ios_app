import 'package:flutter/cupertino.dart';

Widget formHeader(String title, String description) {
  return Container(
    height: 120,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$title',
          style: TextStyle(
              fontSize: 32, fontWeight: FontWeight.w600, letterSpacing: -1),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('$description', style: TextStyle()),
        )
      ],
    ),
  );
}
