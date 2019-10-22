import 'package:flutter/material.dart';
import 'package:flutter_app/widget/common/common_widget.dart';

//https://api.flutter.dev/flutter/widgets/Text-class.html
void main() {
  showWidgetByCallback(fetchWidgetCallback);
}

Widget fetchWidgetCallback(BuildContext context) {
  return const Text.rich(
    TextSpan(
      text: 'Hello', // default text style
      children: <TextSpan>[
        TextSpan(text: ' beautiful ', style: TextStyle(fontStyle: FontStyle.italic)),
        TextSpan(text: 'world', style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    ),
  );
}
