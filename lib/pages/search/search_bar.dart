import 'package:flutter/material.dart';
import 'package:flutter_wechat/pages/search/search_page.dart';
class SearchBar extends SearchDelegate<String>{
  /**
   *  这个方法返回一个控件列表，显示为搜索框右边的图标按钮，
   *  这里设置为一个清除按钮,并且在搜索内容为空的时候显示建议搜索内容，
   *  使用的是showSuggestions(context)方法：
   */
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      FlatButton(
        child: Text('取消')
      )
    ];
  }

  /**
   * 这个方法返回一个控件，
   * 显示为搜索框左侧的按钮，
   */
  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.search),
    );
  }

  /**
   * 这个方法返回一个控件，显示为搜索内容区域的搜索结果内容。
   */
  @override
  Widget buildResults(BuildContext context) {
    return Text('title');
  }

  /**
   * 这个方法返回一个控件，显示为搜索内容区域的建议内容。
   */
  @override
  Widget buildSuggestions(BuildContext context) {
    return SearchPage();
  }

//  /**
//   * 这个方法返回一个主题，也就是可以自定义搜索界面的主题样式：
//   */
//  @override
//  ThemeData appBarTheme(BuildContext context) {
//    assert(context != null);
//    final ThemeData theme = Theme.of(context);
//    assert(theme != null);
//    return theme.copyWith(
//      primaryColor: Colors.white,
//      primaryIconTheme: theme.primaryIconTheme.copyWith(color: Colors.grey),
//      primaryColorBrightness: Brightness.light,
//      primaryTextTheme: theme.textTheme,
//    );
//  }
}