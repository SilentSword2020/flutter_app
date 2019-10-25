import 'package:flutter/material.dart';
import 'package:flutter_app/widget/common/common_widget.dart';

//https://api.flutter.dev/flutter/widgets/Icon-class.html
void main() {
  showWidgetByCallback(title: "icon", fetchWidgetCallback: fetchWidgetCallback);
}

//TODO Icons are not interactive. For an interactive icon, consider material's IconButton.

Widget fetchWidgetCallback(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround, //平分空间显示
    children: const <Widget>[
      Icon(
        Icons.favorite,
        color: Colors.pink,
        size: 24.0,
        semanticLabel: 'Text to announce in accessibility modes',
      ),
      Icon(
        Icons.audiotrack,
        color: Colors.green,
        size: 30.0,
      ),
      Icon(
        Icons.beach_access,
        color: Colors.blue,
        size: 36.0,
      ),
    ],
  );
}
