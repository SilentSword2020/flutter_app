import 'package:flutter/material.dart';
import 'package:flutter_app/widget/common/common_widget.dart';

//https://api.flutter.dev/flutter/material/ActionChip-class.html
void main() {
  showWidgetByCallback(title: "ActionChip", fetchWidgetCallback: fetchWidgetCallback);
}

Widget fetchWidgetCallback(BuildContext context) {
  return ActionChip(
      avatar: CircleAvatar(
        backgroundColor: Colors.grey.shade800,
        child: Text('AB'),
      ),
      label: Text('Aaron Burr'),
      onPressed: () {
        print("If you stand for nothing, Burr, what’ll you fall for?");
      });
}
