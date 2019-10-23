import 'package:flutter/material.dart';
import 'package:flutter_app/widget/common/common_widget.dart';

//https://api.flutter.dev/flutter/material/IconButton-class.html
void main() {
  showWidgetByCallback(title: "IconButton", fetchWidgetCallback: fetchWidgetCallback);
}

Widget fetchWidgetCallback(BuildContext context) {
  return Center(
    child: Container(
      child: Ink(//波纹效果
        decoration: ShapeDecoration(
          color: Colors.pinkAccent,
          shape: CircleBorder(),
        ),
        child: IconButton(
          icon: Icon(Icons.android),
          color: Colors.white,
          onPressed: () {
            print("filled background");
          },
        ),
      ),
    ),
  );
}
