import 'package:flutter/material.dart';

void showWidget(Widget widget) {
  runApp(new MaterialApp(
    title: 'Flutter Tutorial',
    home: new TutorialHome(widget),
  ));
}

void showWidgetByCallback(FetchWidgetCallback fetchWidgetCallback) {
  runApp(new MaterialApp(
    title: 'Flutter Tutorial',
    home: new TutorialHome(null, fetchWidgetCallback: fetchWidgetCallback),
  ));
}

typedef Widget FetchWidgetCallback(BuildContext context);

class TutorialHome extends StatelessWidget {
  final Widget bodyWidget;
  final FetchWidgetCallback fetchWidgetCallback;

  TutorialHome(this.bodyWidget, {this.fetchWidgetCallback}); //构造函数，可选命名参数

  @override
  Widget build(BuildContext context) {
    //Scaffold是Material中主要的布局组件.
    return new Scaffold(
      appBar: new AppBar(
        //显示在标题之前
        leading: new IconButton(
          icon: new Icon(Icons.menu),
          tooltip: 'Navigation menu', //长按时，显示提示
          onPressed: null,
        ),
        title: new Text('Example title'),
        //显示在标题之后
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search),
            tooltip: 'Search', //长按时，显示提示
            onPressed: null,
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
        onPressed: null,
      ),
    );
  }

  Widget getBodyWidget(BuildContext context) => bodyWidget == null
      ? (this.fetchWidgetCallback != null
          ? this.fetchWidgetCallback(context)
          : null)
      : bodyWidget;
}
