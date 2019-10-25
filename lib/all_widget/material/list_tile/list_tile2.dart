import 'package:flutter/material.dart';
import 'package:flutter_app/widget/common/common_widget.dart';

//https://api.flutter.dev/flutter/material/ListTile-class.html

void main() {
  showWidgetByCallback(title: "ListTileInListView", fetchWidgetCallback: fetchWidgetCallback);
}

Widget fetchWidgetCallback(BuildContext context) {
  return ListTile(
    leading: GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {},
      child: Container(
        width: 48,
        height: 48,
        padding: EdgeInsets.symmetric(vertical: 4.0),
        alignment: Alignment.center,
        child: CircleAvatar(),
      ),
    ),
    title: Text('title'),
    dense: false,
  );
}
