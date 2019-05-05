import 'package:flutter/material.dart';
class MePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          alignment:Alignment.center,
          child: Text(
            "Me Content",
            textAlign: TextAlign.center,
          ),
        )
    );
  }
}