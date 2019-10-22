import 'package:flutter/material.dart';
import 'package:flutter_app/widget/common/common_widget.dart';

//https://api.flutter.dev/flutter/widgets/RichText-class.html
void main() {
  showWidgetByCallback(title: "RichText", fetchWidgetCallback: fetchWidgetCallback);
}

Widget fetchWidgetCallback(BuildContext context) {
  return RichText(
    text: TextSpan(
      text: 'Hello ',
      style: DefaultTextStyle.of(context).style.copyWith(color: Colors.brown),
      children: <TextSpan>[
        TextSpan(text: 'bold', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
        TextSpan(text: ' world!'), //使用父widget的样式
      ],
    ),
  );
}
