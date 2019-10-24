import 'package:flutter/material.dart';
import 'package:flutter_app/widget/common/common_widget.dart';

//https://api.flutter.dev/flutter/material/Checkbox-class.html

void main() {
  showWidgetByCallback(title: "Checkbox", fetchWidgetCallback: fetchWidgetCallback);
}

Widget fetchWidgetCallback(BuildContext context) {
  return MyStatefulWidget();
}

enum SingingCharacter { lafayette, jefferson }

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  var _selectList = <SingingCharacter>[];

  void _updateState(SingingCharacter value) {
    setState(() {
      if (!_selectList.contains(value)) {
        _selectList.add(value);
      } else {
        _selectList.remove(value);
      }
    });
  }

  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          ListTile(
            title: const Text('Lafayette'),
            leading: Checkbox(
              value: _selectList.contains(SingingCharacter.lafayette),
              onChanged: (value) {
                _updateState(SingingCharacter.lafayette);
              },
            ),
            onTap: () {
              _updateState(SingingCharacter.lafayette);
            },
          ),
          ListTile(
            title: const Text('jefferson'),
            leading: Checkbox(
              value: _selectList.contains(SingingCharacter.jefferson),
              onChanged: (value) {
                _updateState(SingingCharacter.jefferson);
              },
            ),
            onTap: () {
              _updateState(SingingCharacter.jefferson);
            },
          ),
        ],
      ),
    );
  }
}
