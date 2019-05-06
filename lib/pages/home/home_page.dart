import 'package:flutter/material.dart';
import 'package:flutter_wechat/i18n/strings.dart';
import 'package:flutter_wechat/app/constants.dart';
import 'package:flutter_wechat/utils/utils.dart';
import 'package:flutter_wechat/pages/home/home_data.dart';
import 'dart:ui';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<HomeData> data = [];
    return Scaffold(
        appBar: AppBar(
          elevation: 0.2,
          title: Text(Strings.TitleHome, style: AppStyles.TitleStyle),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Image.asset('assets/images/ic_home_add.png',
                  width: AppDimens.ActionIconSize,
                  height: AppDimens.ActionIconSize),
              onPressed: () {
                _showHomeMenu(context);
              },
            )
          ],
        ),
        body: Container(
          alignment: Alignment.center,
          // child: _homeListView(context,data),
          child: Text('home'),
        ));
  }

  _showHomeMenu(BuildContext context) {
    final RenderBox overlay = Overlay.of(context).context.findRenderObject();
    //RelativeRect.fromLTRB(left, top, right, bottom)
    final RelativeRect position = RelativeRect.fromLTRB(
        overlay.size.width,
        MediaQueryData.fromWindow(window).padding.top +
            AppDimens.kToolbarHeight +
            11.0,
        // 使用的高度: 状态栏 + appBar + 自定义数值
        0.0,
        overlay.size.height);

    showMenu(
      context: context,
      position: position,
      items: <PopupMenuItem<String>>[
        PopupMenuItem<String>(
            value: 'item1',
            child: Row(children: <Widget>[
              Icon(Icons.message, size: 18.0, color: Colors.black),
              Container(width: 8.0),
              Text(Strings.MenuGroupChat, style: AppStyles.MenuStyle),
            ])),
        PopupMenuItem<String>(
            value: 'item2',
            child: Row(children: <Widget>[
              Icon(Icons.person_add, size: 18.0, color: Colors.black),
              Container(width: 8.0),
              Text(Strings.MenuAddFriends, style: AppStyles.MenuStyle),
            ])),
        PopupMenuItem<String>(
            value: 'item3',
            child: Row(children: <Widget>[
              Icon(Icons.repeat, size: 18.0, color: Colors.black),
              Container(width: 8.0),
              Text(Strings.MenuQRScan, style: AppStyles.MenuStyle),
            ])),
        PopupMenuItem<String>(
            value: 'item4',
            child: Row(children: <Widget>[
              Icon(Icons.verified_user, size: 18.0, color: Colors.black),
              Container(width: 8.0),
              Text(Strings.MenuPayments, style: AppStyles.MenuStyle),
            ]))
      ],
    ).then((String value) {
      switch (value) {
        case 'item1':
          ToastUtils.showToast('发起群聊');
          break;
        case 'item2':
          ToastUtils.showToast('添加朋友');
          break;
        case 'item3':
          ToastUtils.showToast('扫一扫');
          break;
        case 'item4':
          ToastUtils.showToast('收付款');
          break;
      }
    });
  }

  Widget _homeListView(BuildContext context, List<HomeData> list) {
    return ListView.separated(
        itemCount: list.length,
        separatorBuilder: (context, index) {
          if (index == 1) {
          } else {}
        });
  }
}
