import 'package:flutter/material.dart';
import 'package:flutter_app/widget/common/common_widget.dart';

//https://api.flutter.dev/flutter/widgets/Column-class.html
void main() {
  showWidgetByCallback(fetchWidgetCallback);
}

Widget fetchWidgetCallback(BuildContext context) {
  return Column(
    children: <Widget>[
      Text('Deliver features faster'),
      Text('Craft beautiful UIs'),
      Expanded(
        child: FittedBox(
          fit: BoxFit.contain, // otherwise the logo will be tiny
          child: const FlutterLogo(),
        ),
      ),
    ],
  );
}
