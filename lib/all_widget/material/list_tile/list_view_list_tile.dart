import 'package:flutter/material.dart';
import 'package:flutter_app/widget/common/common_widget.dart';

//https://api.flutter.dev/flutter/material/ListTile-class.html

void main() {
  showWidgetByCallback(title: "ListTileInListView", fetchWidgetCallback: fetchWidgetCallback);
}

Widget fetchWidgetCallback(BuildContext context) {
  return ListView(
    children: const <Widget>[
      Card(child: ListTile(title: Text('One-line ListTile'))),
      Card(
        child: ListTile(
          leading: FlutterLogo(),
          title: Text('One-line with leading widget'),
        ),
      ),
      Card(
        child: ListTile(
          title: Text('One-line with trailing widget'),
          trailing: Icon(Icons.more_vert),
        ),
      ),
      Card(
        child: ListTile(
          leading: FlutterLogo(),
          title: Text('One-line with both widgets'),
          trailing: Icon(Icons.more_vert),
        ),
      ),
      Card(
        child: ListTile(
          title: Text('One-line dense ListTile'),
          dense: true,
        ),
      ),
      Card(
        child: ListTile(
          leading: FlutterLogo(size: 56.0),
          title: Text('Two-line ListTile'),
          subtitle: Text('Here is a second line'),
          trailing: Icon(Icons.more_vert),
        ),
      ),
      Card(
        child: ListTile(
          leading: FlutterLogo(size: 72.0),
          title: Text('Three-line ListTile'),
          subtitle: Text('A sufficiently long subtitle warrants three lines.'),
          trailing: Icon(Icons.more_vert),
          isThreeLine: true,
        ),
      ),
    ],
  );
}
