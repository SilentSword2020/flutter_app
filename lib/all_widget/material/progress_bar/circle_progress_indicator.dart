import 'package:flutter/material.dart';
import 'package:flutter_app/widget/common/common_widget.dart';

//https://api.flutter.dev/flutter/material/CircularProgressIndicator-class.html

void main() {
  showWidgetByCallback(title: "CircularProgressIndicator", fetchWidgetCallback: fetchWidgetCallback);
}

Widget fetchWidgetCallback(BuildContext context) {
  return const CircularProgressIndicator(
    value: 0.7, //范围: 0.0~1.0
    backgroundColor: Colors.blue,
    valueColor: AlwaysStoppedAnimation<Color>(Colors.pinkAccent),
  );
}
