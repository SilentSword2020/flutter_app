import 'package:flutter/material.dart';
import 'package:flutter_app/widget/common/common_widget.dart';

//https://docs.flutter.io/flutter/widgets/Row-class.html
void main() {
  showWidgetByCallback(title: "row", fetchWidgetCallback: fetchWidgetCallback);
}

Widget fetchWidgetCallback(BuildContext context) {
  return Row(
    children: <Widget>[
      //三个widget等分水平空间
      Expanded(
        child: Text('Deliver features faster', textAlign: TextAlign.center),
      ),
      Expanded(
        child: Text('Craft beautiful UIs', textAlign: TextAlign.center),
      ),
      Expanded(
        child: FittedBox(
          fit: BoxFit.contain, // otherwise the logo will be tiny
          child: const FlutterLogo(),
        ),
      ),
    ],
  );
}
