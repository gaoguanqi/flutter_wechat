import 'package:flutter/material.dart';
import 'package:flutter_wechat/i18n/strings.dart';
import 'package:flutter_wechat/app/constants.dart';
import 'package:flutter_wechat/pages/main/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return RestartWidget(
      child: MaterialApp(
          title: Strings.AppName,
          theme: ThemeData(
            primaryColor: Color(AppColors.PrimaryColor),
          ),
          home: MainScreen()),
    );
  }
}

//这个组件用来重新加载整个child Widget的。当我们需要重启APP的时候，可以使用这个方案
//https://stackoverflow.com/questions/50115311/flutter-how-to-force-an-application-restart-in-production-mode
class RestartWidget extends StatefulWidget {
  final Widget child;

  RestartWidget({this.child});

  static restartApp(BuildContext context) {
    final _RestartWidgetState state =
        context.ancestorStateOfType(const TypeMatcher<_RestartWidgetState>());
    state.restartApp();
  }

  @override
  _RestartWidgetState createState() => new _RestartWidgetState();
}

class _RestartWidgetState extends State<RestartWidget> {
  Key key = new UniqueKey();

  void restartApp() {
    this.setState(() {
      key = new UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      key: key,
      child: widget.child,
    );
  }
}
