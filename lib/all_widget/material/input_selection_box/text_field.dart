import 'package:flutter/material.dart';
import 'package:flutter_app/widget/common/common_widget.dart';

//https://api.flutter.dev/flutter/material/TextField-class.html

void main() {
  showWidgetByCallback(title: "TextField", fetchWidgetCallback: fetchWidgetCallback);
}

Widget fetchWidgetCallback(BuildContext context) {
  return new Container(
      margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
      child: TextField(
        obscureText: true, //是否是密文
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Password',
        ),
      ));
}
