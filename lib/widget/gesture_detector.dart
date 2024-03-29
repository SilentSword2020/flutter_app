import 'package:flutter/material.dart';

import 'common/common_widget.dart';

//https://flutterchina.club/widgets-intro/
void main() {
  runApp(new MaterialApp(
    title: 'Flutter Tutorial',
    home: new TutorialHome(new MyButton()),
  ));
}

/*
 * 手势的简单使用, 处理
 */
class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      //TODO
      onTap: () {
        print('MyButton was tapped!');
      },
      onLongPress: () {
        print('MyButton was onLongPress!');
      },
      child: new Container(
        //边框,间距，阴影
        height: 36.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.circular(5.0),
          color: Colors.lightGreen[500],
        ),
        child: new Center(
          child: new Text('Engage'),
        ),
      ),
    );
  }
}
