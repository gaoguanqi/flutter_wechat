import 'package:flutter/material.dart';
import 'package:flutter_wechat/i18n/strings.dart';
import 'package:flutter_wechat/app/constants.dart';
import 'package:flutter_wechat/utils/utils.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          child: Text(
            "HOME Content",
            textAlign: TextAlign.center,
          ),
        ));
  }

  _showHomeMenu(BuildContext context) {
    ToastUtils.showToast('点击了按钮');
    final RenderBox overlay = Overlay.of(context).context.findRenderObject();
    //RelativeRect.fromLTRB(left, top, right, bottom)
    final RelativeRect position = RelativeRect.fromLTRB(
        overlay.size.width,
        90.0, //我这里想获取到appBar 的高度准们获取？？
        0.0,
        overlay.size.height);
    showMenu<String>(
        context: context,
        position: position,
        items: <PopupMenuItem<String>>[
          PopupMenuItem<String>(
            child: Text('text'),
            value: 'value',
          ),
          PopupMenuItem<String>(
            child: Text('text'),
            value: 'value',
          ),
          PopupMenuItem<String>(
            child: Text('text'),
            value: 'value',
          )
        ]);
  }
}
