import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

//https://flutterchina.club/cookbook/design/themes/
//https://docs.flutter.io/flutter/material/ThemeData-class.html

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appName = 'Custom Themes';

    return new MaterialApp(
      title: appName,
      theme: new ThemeData(
        brightness: Brightness.dark, //主题背景
        primaryColor: Colors.lightBlue[800], //标题栏的颜色
        accentColor: Colors.cyan[600], //
      ),
      home: new MyHomePage(
        title: appName,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Center(
        child: new Container(
          color: Theme.of(context).accentColor, //使用全局主题中的样式
          child: new Text(
            'Text with a background color',
            style: Theme.of(context).textTheme.title, //使用全局主题中的样式
          ),
        ),
      ),
      floatingActionButton: new Theme(
        //这个不起作用
        //data: Theme.of(context).copyWith(accentColor: Colors.pinkAccent), //继承全局主题的样式，覆盖一些样式

        //自定义主题
        data: new ThemeData(accentColor: Colors.pinkAccent),

        child: new FloatingActionButton(
          onPressed: () {},
          child: new Icon(Icons.add),
        ),
      ),
    );
  }
}
