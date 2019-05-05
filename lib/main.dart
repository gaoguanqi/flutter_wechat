import 'package:flutter/material.dart';
import 'package:flutter_wechat/i18n/strings.dart';
import 'package:flutter_wechat/app/constants.dart';
import 'package:flutter_wechat/pages/main/main_screen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.AppName,
      theme: ThemeData(
        primaryColor: Color(AppColors.PrimaryColor),
      ),
      home: MainScreen()
    );
  }
}

