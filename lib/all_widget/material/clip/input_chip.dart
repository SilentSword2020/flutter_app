import 'package:flutter/material.dart';
import 'package:flutter_app/widget/common/common_widget.dart';

//https://api.flutter.dev/flutter/material/InputChip-class.html
void main() {
  showWidgetByCallback(title: "InputChip", fetchWidgetCallback: fetchWidgetCallback);
}

Widget fetchWidgetCallback(BuildContext context) {
  return InputChip(
      avatar: CircleAvatar(
        backgroundColor: Colors.grey.shade800,
        child: Text('AB'),
      ),
      label: Text('Aaron Burr'),
      onPressed: () {
        print('I am the one thing in life.');
      }
  );
}
