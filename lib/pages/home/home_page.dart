import 'package:flutter/material.dart';
class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          alignment:Alignment.center,
          child: Text(
            "HOME Content",
            textAlign: TextAlign.center,
          ),
        )
    );
  }
}

