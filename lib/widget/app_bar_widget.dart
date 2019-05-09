import 'package:flutter/material.dart';
import 'package:flutter_wechat/app/constants.dart';
class MyAppBar extends AppBar{
  final String titleText;
  final List<Widget> titleActions;

   MyAppBar({
    @required this.titleText,
    @required this.titleActions,
  });

  @override
  Widget get title => Text(titleText,style: AppStyles.AppBarStyle);
  @override
  double get elevation => 0.2;
  @override
  bool get centerTitle => true;
  @override
  List<Widget> get actions => titleActions;
}