import 'package:flutter/material.dart';
import 'package:flutter_wechat/i18n/strings.dart';
import 'package:flutter_wechat/app/constants.dart';
import 'package:flutter_wechat/utils/utils.dart';
import 'package:flutter_wechat/pages/home/home_data.dart';
import 'dart:ui';
import 'package:flutter_wechat/pages/home/search_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<HomeData> data = HomePageData.mock().list;
    return Scaffold(
        appBar: AppBar(
          elevation: 0.2,
          title: Text(Strings.TitleHome, style: AppStyles.TitleStyle),
          centerTitle: true,
          /// menu 1
//          actions: <Widget>[
//            IconButton(
//              icon: Image.asset('assets/images/ic_home_add.png',
//                  width: AppDimens.ActionIconSize,
//                  height: AppDimens.ActionIconSize),
//              onPressed: () {
//                _showHomeMenu(context);
//              },
//            )
//          ],
        ///menu 2
        actions: _menuActions(context),
        ),
        body: Container(
          alignment: Alignment.center,
          // child: _homeListView(context,data),
          child: _homeListView(context,data),
        ));
  }

  ///menu 1
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
    return ListView.builder(
      scrollDirection: Axis.vertical, //设置滑动方向 Axis.horizontal 水平  默认 Axis.vertical 垂直
      padding: EdgeInsets.all(10.0),//内间距
      reverse: false,//是否倒序显示 默认正序 false  倒序true
      primary: true,//false，如果内容不足，则用户无法滚动 而如果[primary]为true，它们总是可以尝试滚动。
      //itemExtent: 30.0,//确定每一个item的高度 会让item加载更加高效
      shrinkWrap: false, //内容适配
      itemCount: list.length,//item 数量
      physics: new ClampingScrollPhysics(), //滑动类型设置
      cacheExtent: 30.0,//cacheExtent  设置预加载的区域
      //滑动监听
      //controller ,
      itemBuilder: (context,index){
       if(index == 0){
         return _SearchItem();
       }else{
         return _ContentItem();
       }
      },
    );
  }
}

/// menu 2  PopupMenuButton 方式不能设置位置，
_menuActions(BuildContext context) {
  return [
    Theme(
      data: ThemeData(
          cardColor: Color(AppColors.ActionMenuBgColor)
      ),
      child: PopupMenuButton(
        itemBuilder: (BuildContext context) {
          return <PopupMenuEntry<ActionItems>>[
            PopupMenuItem(
              child: _buildPopupMenuItem(0xe69e, Strings.MenuGroupChat),
              value: ActionItems.GROUP_CHAT,
            ),
            PopupMenuDivider(height: 0.5),
            PopupMenuItem(
              child: _buildPopupMenuItem(0xe638, Strings.MenuAddFriends),
              value: ActionItems.ADD_FRIEND,
            ),
            PopupMenuDivider(height: 0.5),
            PopupMenuItem(
              child: _buildPopupMenuItem(0xe61b, Strings.MenuQRScan),
              value: ActionItems.QR_SCAN,
            ),
            PopupMenuDivider(height: 0.5),
            PopupMenuItem(
              child: _buildPopupMenuItem(0xe62a, Strings.MenuPayments),
              value: ActionItems.PAYMENT,
            ),
            PopupMenuDivider(height: 0.5),
          ];
        },
        icon: Icon(
            IconData(
              0xe60e,
              fontFamily: Constants.IconFontFamily,
            ),
            size: 20.0,
            color: const Color(AppColors.ActionIconColor)
        ),
        onSelected: (ActionItems selected) {
          switch(selected.index){
            case 0:
              ToastUtils.showToast(Strings.MenuGroupChat);
              break;
            case 1:
              ToastUtils.showToast(Strings.MenuAddFriends);
              break;
            case 2:
              ToastUtils.showToast(Strings.MenuQRScan);
              break;
            case 3:
              ToastUtils.showToast(Strings.MenuPayments);
              break;
          }
        },
      ),
    ),
    Container(width: 16.0),
  ];
}

_buildPopupMenuItem(int icon, String title) {
  /////Center继承自Align，只不过是将alignment设置为Alignment.center,Align默认的对齐方式就是居中。
  return Center(
   child: Row(
     children: <Widget>[
       Icon(IconData(
         icon,
         fontFamily: Constants.IconFontFamily,
       ), size: 18.0, color: const Color(AppColors.AppBarPopupMenuColor)),
       Container(width: 6.0),
       Text(title, style: TextStyle(fontSize: 14.0,color: const Color(AppColors.AppBarPopupMenuColor))),
     ],
   ),
  );
}

class _ContentItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Text('home'),
    );
  }
}

class _SearchItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      alignment:Alignment.center,
      child: RaisedButton(
        elevation: 0.2,
        onPressed: (){
          _jumpToSearchPage(context);
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center, //主轴方向的对齐方式，会对child的位置起作用，默认start。
            children: <Widget>[
              Icon(Icons.search, size: 18.0, color: Colors.grey),
              Container(width: 6.0),
              Text(Strings.TextSearch,style: TextStyle(fontSize: 16.0,color: Colors.grey),),
            ],
        )
      ),
    );
  }
}

 _jumpToSearchPage(BuildContext context) {
   Navigator.push(context,MaterialPageRoute(builder: (context) => SearchPage()));
}

enum ActionItems {
  GROUP_CHAT, ADD_FRIEND, QR_SCAN, PAYMENT
}