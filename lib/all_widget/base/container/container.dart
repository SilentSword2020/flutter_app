import 'package:flutter/material.dart';
import 'package:flutter_app/widget/common/common_widget.dart';

//https://docs.flutter.io/flutter/widgets/Container-class.html
void main() {
  showWidgetByCallback(title:"container", fetchWidgetCallback: (BuildContext context) {
    return new Center(
      child: Container(
        margin: const EdgeInsets.all(10.0),
        color: Colors.amber[600],
        width: 48.0,
        height: 48.0,
      ),
    );
  });
}
