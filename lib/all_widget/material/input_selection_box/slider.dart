import 'package:flutter/material.dart';
import 'package:flutter_app/widget/common/common_widget.dart';

//https://api.flutter.dev/flutter/material/Slider-class.html

void main() {
  showWidgetByCallback(title: "Slider", fetchWidgetCallback: fetchWidgetCallback);
}

Widget fetchWidgetCallback(BuildContext context) {
  return MyStatefulWidget();
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  double _value = 10;

  Widget build(BuildContext context) {
    return new Container(
        margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
        child: Slider(
          value: _value,
          min: 1,
          max: 60,
          //间隔
          divisions: 5,
          label: "$_value",
          onChanged: (value) {
            setState(() {
              print("Slider current value: $value");
              _value = value;
            });
          },
        ));
  }
}
