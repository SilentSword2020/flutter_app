import 'package:flutter/material.dart';
import 'package:flutter_app/widget/common/common_widget.dart';

//https://api.flutter.dev/flutter/widgets/Column-class.html
void main() {
  showWidgetByCallback(fetchWidgetCallback);
}

Widget fetchWidgetCallback(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start, //左边对齐
    mainAxisSize: MainAxisSize.min, //高度为所有子widget的和
    children: <Widget>[
      Text('We move under cover and we move as one'),
      Text('Through the night, we have one shot to live another day'),
      Text('We cannot let a stray gunshot give us away'),
      Text('We will fight up close, seize the moment and stay in it'),
      Text('It’s either that or meet the business end of a bayonet'),
      Text('The code word is ‘Rochambeau,’ dig me?'),
      Text('Rochambeau!',
          style: DefaultTextStyle.of(context)
              .style
              .apply(fontSizeFactor: 1.0, color: Colors.blue)),
    ],
  );
}
