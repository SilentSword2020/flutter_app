import 'package:flutter/material.dart';
import 'package:flutter_app/widget/common/common_widget.dart';

//https://api.flutter.dev/flutter/material/Switch-class.html

void main() {
  showWidgetByCallback(title: "Switch", fetchWidgetCallback: fetchWidgetCallback);
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
  bool _value = true;//默认打开

  Widget build(BuildContext context) {
    return new Container(
        margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
        child: Switch(
          value: _value,
          onChanged: (value) {
            setState(() {
              _value = !_value;
            });
          },
        ));
  }
}
