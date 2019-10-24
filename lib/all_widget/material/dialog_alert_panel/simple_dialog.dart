import 'package:flutter/material.dart';
import 'package:flutter_app/widget/common/common_widget.dart';

//https://api.flutter.dev/flutter/material/SimpleDialog-class.html
//https://api.flutter.dev/flutter/material/SimpleDialogOption-class.html

void main() {
  showWidgetByCallback(title: "SimpleDialog", fetchWidgetCallback: fetchWidgetCallback);
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

enum Department { treasury, state }

Future<void> _showDialog(BuildContext context) async {
  switch (await showDialog<Department>(//show dialog
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('Select assignment'),
          children: <Widget>[
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, Department.treasury);
              },
              child: const Text('Treasury department'),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, Department.state);
              },
              child: const Text('State department'),
            ),
          ],
        );
      })) {
    case Department.treasury:
      print("SimpleDialog switch action: Treasury department");
      break;
    case Department.state:
      print("SimpleDialog switch action: State department");
      break;
  }
}
