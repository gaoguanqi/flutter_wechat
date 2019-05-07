import 'package:flutter/material.dart';
import 'dart:ui';
class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double top = MediaQueryData
        .fromWindow(window)
        .padding
        .top;
    return Scaffold(
        body: Column(
          children: <Widget>[
            Padding(
              padding:EdgeInsets.only(left: 6.0, right: 6.0, top: top, bottom: 0.0),
            ),
          ],
        )
    );
  }
}
