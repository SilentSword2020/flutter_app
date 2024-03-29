import 'package:flutter/material.dart';
import 'package:flutter_app/widget/common/common_widget.dart';

//https://docs.flutter.io/flutter/widgets/Container-class.html
void main() {
  showWidgetByCallback(title: "container2", fetchWidgetCallback: fetchWidgetCallback);
}

Widget fetchWidgetCallback(BuildContext context) {
  return Container(
    constraints: BoxConstraints.expand(
      height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0,
    ),
    padding: const EdgeInsets.all(8.0),
    color: Colors.blue[600],
    alignment: Alignment.center,
    child: Text('Hello World !', style: Theme.of(context).textTheme.display1.copyWith(color: Colors.white)),
    transform: Matrix4.rotationZ(0.2),
  );
}
