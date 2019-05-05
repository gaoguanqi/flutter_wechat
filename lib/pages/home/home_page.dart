import 'package:flutter/material.dart';
import 'package:flutter_wechat/i18n/strings.dart';
import 'package:flutter_wechat/app/constants.dart';
class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          elevation: 0.2,
          title: Text(
              Strings.TitleHome,
              style: AppStyles.TitleStyle
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
             icon: Image.asset('assets/images/ic_home_add.png',width: AppDimens.ActionIconSize,height: AppDimens.ActionIconSize), 
            )
          ],

        ),
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

