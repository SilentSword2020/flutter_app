import 'package:flutter/material.dart';
import 'package:flutter_app/widget/common/common_widget.dart';

//https://docs.flutter.io/flutter/widgets/Placeholder-class.html
void main() {
  showWidgetByCallback(title: "placeholder", fetchWidgetCallback: fetchWidgetCallback);
}

Widget fetchWidgetCallback(BuildContext context) {
  return Placeholder(
    color: Colors.blue,
    fallbackWidth: 50,
    fallbackHeight: 50,
  );
}
