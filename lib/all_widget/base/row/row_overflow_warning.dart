import 'package:flutter/material.dart';
import 'package:flutter_app/widget/common/common_widget.dart';

//https://docs.flutter.io/flutter/widgets/Row-class.html
void main() {
  showWidgetByCallback(title: "row_overflow_warning", fetchWidgetCallback: fetchWidgetCallback);
}

Widget fetchWidgetCallback(BuildContext context) {
  return Row(
    children: <Widget>[
      const FlutterLogo(),
      const Text('Flutter\'s hot reload helps you quickly and easily experiment, build UIs, add features, and fix bug faster. Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android.'),
      const Icon(Icons.sentiment_very_satisfied),
    ],
  );
}
