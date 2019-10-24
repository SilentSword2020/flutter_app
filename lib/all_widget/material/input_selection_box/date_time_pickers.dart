import 'package:flutter/material.dart';
import 'package:flutter_app/widget/common/common_widget.dart';

//https://api.flutter.dev/flutter/material/showDatePicker.html

void main() {
  showWidgetByCallback(title: "date_time_pickers", fetchWidgetCallback: fetchWidgetCallback);
}

Widget fetchWidgetCallback(BuildContext context) {
  return new Container(
    margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
    child: RaisedButton(
      onPressed: () {
        Future<DateTime> selectDate = showDateTimePickers(context);
        selectDate.then((value) {
          print("date_time_pickers select date: $value");
        });
      },
      child: const Text('Enabled Button', style: TextStyle(fontSize: 20)),
    ),
  );
}

//显示选择日期对话框
Future<DateTime> showDateTimePickers(BuildContext context) {
  return showDatePicker(
    context: context,//required
    initialDate: DateTime.now(),//required
    firstDate: DateTime(2018),//required
    lastDate: DateTime(2030),//required
    builder: (BuildContext context, Widget child) {
      return Theme(
        data: ThemeData.light(),
        child: child,
      );
    },
  );
}
