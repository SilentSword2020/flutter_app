import 'package:flutter/material.dart';

//https://flutterchina.club/widgets-intro/
void main() {
  runApp(new MaterialApp(
    title: 'Flutter Tutorial',
    home: new TutorialHome(),
  ));
}

class TutorialHome extends StatelessWidget {
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
        child: new Text('Hello, world!'),
      ),
      floatingActionButton: new FloatingActionButton(
        tooltip: 'Add', // used by assistive technologies
        child: new Icon(Icons.add),
        onPressed: null,
      ),
    );
  }
}
