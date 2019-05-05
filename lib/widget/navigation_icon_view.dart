import 'package:flutter/material.dart';
import 'package:flutter_wechat/app/constants.dart';
class NavigationIconView{
  final BottomNavigationBarItem item;
  NavigationIconView({Key key, String title, IconData icon, IconData activeIcon}) :
        item = BottomNavigationBarItem(
          icon: Icon(icon),
          activeIcon: Icon(activeIcon),
          title: Text(
              title,
              style: TextStyle(
                fontSize: 12.0
              ),
          ),
          backgroundColor: Colors.white,
        );
}