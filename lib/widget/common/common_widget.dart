import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void showWidget(Widget widget) {
  runApp(new MaterialApp(
    title: 'Flutter Tutorial',
    home: new TutorialHome(widget),
  ));
}

void showWidgetByCallback({String title, FetchWidgetCallback fetchWidgetCallback}) {
  runApp(new MaterialApp(
    title: 'Flutter Tutorial',
    home: new TutorialHome(null, title: title, fetchWidgetCallback: fetchWidgetCallback),
  ));
}

typedef Widget FetchWidgetCallback(BuildContext context);

var _scaffoldkey = new GlobalKey<ScaffoldState>();

class TutorialHome extends StatelessWidget {
  final Widget bodyWidget;
  final FetchWidgetCallback fetchWidgetCallback;
  final String title;

  TutorialHome(this.bodyWidget, {Key key, this.title, this.fetchWidgetCallback}) : super(key: key); //构造函数，可选命名参数

  @override
  Widget build(BuildContext context) {
    //Scaffold是Material中主要的布局组件.
    return new Scaffold(
      key: _scaffoldkey,
      appBar: new AppBar(
        //显示在标题之前
        leading: new IconButton(
          icon: new Icon(Icons.menu),
          tooltip: 'Navigation menu', //长按时，显示提示
          onPressed: null,
        ),
        title: new Text(this.title != null ? this.title : 'Example title'),
        //显示在标题之后
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search),
            tooltip: 'Search', //长按时，显示提示
            onPressed: () {
              showBottomSheet("SnackBar tip");
            },
          ),
        ],
      ),
      //body占屏幕的大部分
      body: new Center(
        child: getBodyWidget(context),
      ),
      floatingActionButton: new FloatingActionButton(
        tooltip: 'Add', // used by assistive technologies
        child: new Icon(Icons.add),
        onPressed: () {
          showSnackBar("SnackBar tip");
        },
      ),
    );
  }

  Widget getBodyWidget(BuildContext context) => bodyWidget == null ? (this.fetchWidgetCallback != null ? this.fetchWidgetCallback(context) : null) : bodyWidget;

  void showSnackBar(String message) {
    var snackBar = SnackBar(content: Text(message));
    _scaffoldkey.currentState.showSnackBar(snackBar);
  }

  void showBottomSheet(String message) {
    _scaffoldkey.currentState.showBottomSheet((context) {
      return Container(
          height: 80,
          color: Colors.blue,
          child: new Row(mainAxisAlignment: MainAxisAlignment.spaceAround, //平分空间显示
              children: <Widget>[
                new Text(message, style: style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 1.0, color: Colors.w),),
              ]));
    });
  }
}
