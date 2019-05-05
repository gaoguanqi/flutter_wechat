import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class ToastUtils{
  static void showToast(String msg){
    if(msg.isNotEmpty){
      Fluttertoast.showToast(
          msg: msg,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIos: 1,
          backgroundColor: Colors.blueGrey,
          textColor: Colors.white,
          fontSize: 14.0
      );
    }
  }
}