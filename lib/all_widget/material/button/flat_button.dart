import 'package:flutter/material.dart';
import 'package:flutter_app/widget/common/common_widget.dart';

//https://api.flutter.dev/flutter/material/FlatButton-class.html
void main() {
  showWidgetByCallback(title: "FlatButton", fetchWidgetCallback: fetchWidgetCallback);
}

Widget fetchWidgetCallback(BuildContext context) {
  return FlatButton(
    color: Colors.pink, //背景颜色
    textColor: Colors.white,//文本颜色
    disabledColor: Colors.grey,//没有设置onPressed时的背景颜色
    disabledTextColor: Colors.black,//没有设置onPressed时的文本颜色
    padding: EdgeInsets.all(8.0),//padding
    splashColor: Colors.purple,//点击时，波纹颜色
    onPressed: () {
      /*...*/
    },
    child: Text(
      "Flat Button",
      style: TextStyle(fontSize: 20.0),
    ),
  );
}
