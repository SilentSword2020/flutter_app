import 'package:flutter/material.dart';
import 'package:flutter_app/widget/common/common_widget.dart';

//https://api.flutter.dev/flutter/widgets/Image-class.html
void main() {
  showWidgetByCallback(title: "image_network", fetchWidgetCallback: fetchWidgetCallback);
}

Widget fetchWidgetCallback(BuildContext context) {
  return Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg');
}
