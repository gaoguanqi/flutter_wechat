import 'package:flutter/material.dart';
import 'package:flutter_wechat/widget/app_bar_widget.dart';
import 'package:flutter_wechat/i18n/strings.dart';
import 'package:flutter_wechat/app/constants.dart';
import 'package:flutter_wechat/utils/utils.dart';
import 'package:flutter_wechat/pages/search/search_page.dart';
import 'package:flutter_wechat/pages/friend/friend_data.dart';
class FriendPage extends StatefulWidget {
  Color _indexBarBg = Colors.transparent;
  String _currentLetter = '';
  _FriendPageState createState() => _FriendPageState();
}


class _FriendPageState extends State<FriendPage>{
  @override
  Widget build(BuildContext context) {
    List<FriendData> data = FriendPageData
        .mock()
        .list;
    return Scaffold(
        appBar: MyAppBar(
            titleText: Strings.TitleFriend,
            titleActions: _menuActions(context)),
        body:Container(
          alignment: Alignment.center,
          // child: _homeListView(context,data),
          child: _friendListView(context, data),
        ));
  }

  _menuActions(BuildContext context) {
    return [
      Theme(
        data: ThemeData(cardColor: Color(AppColors.ActionMenuBgColor)),
        child: IconButton(
          icon: Icon(IconData(0xe638, fontFamily: Constants.IconFontFamily),
              size: 20.0, color: const Color(AppColors.ActionIconColor)),
          onPressed: () {
            ToastUtils.showToast('添加朋友');
          },
        ),
      ),
      Container(width: 18.0)
    ];
  }

  Widget _friendListView(BuildContext context,List<FriendData> list) => Container(
      child: Stack(
        children: <Widget>[
         ListView.builder(
         itemCount: list.length + 1,
         padding: EdgeInsets.only(top: 10.0,bottom: 20.0),
        itemBuilder: (BuildContext context, int index) {
            if(index == 0){
              return _SearchItem();
            }else if(index == 1){
              return _FunctionItem(index);
            }else if(index == 2){
              return _FunctionItem(index);
            }else if(index == 3){
              return _FunctionItem(index);
            }else if(index == 4){
              return _FunctionItem(index);
            }else{
              return _ContentItem(list[index - 1]);
            }
        }),
          Positioned(
              width: AppDimens.IndexBarWidth,
              right: 0.0,
              top: 0.0,
              bottom: 0.0,
              child: LayoutBuilder(
                builder: _buildIndexBar)
          )
        ],
      )
  );

  Widget _buildIndexBar(BuildContext context, BoxConstraints constraints) {
    final List<Widget> _letters = INDEX_BAR_WORDS.map((String word) {
      return Expanded(
        child: Text(word),
      );
    }).toList();

    return ListView.builder( scrollDirection: Axis.vertical,
        //设置滑动方向 Axis.horizontal 水平  默认 Axis.vertical 垂直
        padding: EdgeInsets.only(top: 10.0,bottom: 20.0),
        //内间距
        reverse: false,
        //是否倒序显示 默认正序 false  倒序true
        primary: true,
        //false，如果内容不足，则用户无法滚动 而如果[primary]为true，它们总是可以尝试滚动。
        //itemExtent: 30.0,//确定每一个item的高度 会让item加载更加高效
        shrinkWrap: false,
        //内容适配
        itemCount: _letters.length + 1,
        //item 数量
        physics: new ClampingScrollPhysics(),
        //滑动类型设置
        cacheExtent: 30.0,
        //cacheExtent  设置预加载的区域
        //滑动监听
        //controller ,
        itemBuilder:(context, index) {
          _letters[index];
        });
  }
}

const INDEX_BAR_WORDS = [
  "↑", "☆",
  "A", "B", "C", "D", "E", "F", "G",
  "H", "I", "J", "K", "L", "M", "N",
  "O", "P", "Q", "R", "S", "T", "U",
  "V", "W", "X", "Y", "Z"
];


class _SearchItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 10.0,right: 10.0),
        height: 46.0,
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: FlatButton(
                onPressed: () {
                  _jumpToSearchPage(context);
                },
                // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                        color: Colors.grey,
                        width: 0.1
                    ),
                    borderRadius: BorderRadius.circular(8.0)
                ),
                color: Colors.white,
                highlightColor: Colors.black12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //主轴方向的对齐方式，会对child的位置起作用，默认start。
                  children: <Widget>[
                    Icon(Icons.search, size: 18.0, color: Colors.grey),
                    Container(width: 6.0),
                    Text(Strings.TextSearch,
                      style: TextStyle(fontSize: 16.0, color: Colors.grey),),
                  ],
                )
            )
        )
    );
  }
}
_jumpToSearchPage(BuildContext context) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => SearchPage()));
}


class _FunctionItem extends StatelessWidget{
  int _indexx;
  _FunctionItem(this._indexx);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.0,right: 10.0),
      height: 46.0,
      alignment: Alignment.topLeft,
      child: Row(
        children: <Widget>[
          Text('text')
        ],
      ),
    );
  }
}

class _ContentItem extends StatelessWidget {
  FriendData _itemData;
  _ContentItem(this._itemData);

  @override
  Widget build(BuildContext context) {
    return Text('text');
  }

}
