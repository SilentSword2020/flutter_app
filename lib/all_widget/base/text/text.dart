import 'package:flutter/material.dart';
import 'package:flutter_app/widget/common/common_widget.dart';

//https://api.flutter.dev/flutter/widgets/Text-class.html
void main() {
  showWidgetByCallback(fetchWidgetCallback);
}

Widget fetchWidgetCallback(BuildContext context) {
  String _name = "world";
  return Text(
    'Hello, $_name! How are you?',
    textAlign: TextAlign.center, //居中
    overflow: TextOverflow.ellipsis, //超过范围：显示省略号 ...
    style: TextStyle(fontWeight: FontWeight.bold),
  );
}
