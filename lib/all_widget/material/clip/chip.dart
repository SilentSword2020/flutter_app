import 'package:flutter/material.dart';
import 'package:flutter_app/widget/common/common_widget.dart';

//https://api.flutter.dev/flutter/material/Chip-class.html
void main() {
  showWidgetByCallback(title: "Chip", fetchWidgetCallback: fetchWidgetCallback);
}

Widget fetchWidgetCallback(BuildContext context) {
  return Chip(
    avatar: CircleAvatar(
      backgroundColor: Colors.pinkAccent,
      child: Text('A', style: TextStyle(color: Colors.white)),
    ),
    label: Text('Aaron Burr'),
  );
}
