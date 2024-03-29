// Flutter code sample for

// This example shows how to make an extended [FloatingActionButton] in a
// [Scaffold], with a  pink [backgroundColor], a thumbs up [Icon] and a
// [Text] label.
//
// ![A screenshot of a pink floating action button with a thumbs up icon and a label that reads "Approve"](https://flutter.github.io/assets-for-api-docs/assets/material/floating_action_button_label.png)

import 'package:flutter/material.dart';

//https://api.flutter.dev/flutter/material/FloatingActionButton-class.html//

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Floating Action Button Label'),
      ),
      body: Center(
        child: const Text('Press the button with a label below!'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
        },
        label: Text('Approve'),
        icon: Icon(Icons.thumb_up),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
