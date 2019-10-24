import 'package:flutter/material.dart';
import 'package:flutter_app/widget/common/common_widget.dart';

//https://api.flutter.dev/flutter/material/AlertDialog-class.html

void main() {
  showWidgetByCallback(title: "AlertDialog", fetchWidgetCallback: fetchWidgetCallback);
}

Widget fetchWidgetCallback(BuildContext context) {
  return new Container(
    margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
    child: RaisedButton(
      onPressed: () {
        _showDialog(context);
      },
      child: const Text('Enabled Button', style: TextStyle(fontSize: 20)),
    ),
  );
}

Future<void> _showDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button! 不能点击外部取消对话框
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Rewind and remember'),
        content: SingleChildScrollView( //防止内容过多，显示不了，相当于Android的ScrollView
          child: ListBody(
            children: <Widget>[
              Text('You will never be satisfied.'),
              Text('You\’re like me. I’m never satisfied.'),
            ],
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('Regret'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          FlatButton(
            child: Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
