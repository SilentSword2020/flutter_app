import 'package:flutter/material.dart';
import 'package:flutter_app/widget/common/common_widget.dart';

//https://api.flutter.dev/flutter/material/LinearProgressIndicator-class.html

void main() {
  showWidgetByCallback(title: "LinearProgressIndicator", fetchWidgetCallback: fetchWidgetCallback);
}

Widget fetchWidgetCallback(BuildContext context) {
  return const LinearProgressIndicator(
    value: 0.5,//范围: 0.0~1.0
  );
}
