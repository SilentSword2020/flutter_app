import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/widget/common/common_widget.dart';

void main() {
  showWidgetByCallback(fetchWidgetCallback);
}

Widget fetchWidgetCallback(BuildContext context) {
  return Row(
    children: <Widget>[
      const FlutterLogo(),
      const Expanded(
        child: Text(
          'Flutter\'s hot reload helps you quickly and easily experiment, build UIs, add features, and fix bug faster. Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android.',
          //overflow: TextOverflow.ellipsis,
        ),
      ),
      const Icon(Icons.sentiment_very_satisfied),
    ],
  );
}
