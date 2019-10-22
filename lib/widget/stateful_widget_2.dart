import 'package:flutter/material.dart';

import 'common/common_widget.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Flutter Tutorial',
    home: new TutorialHome(new Counter()),
  ));
}

/*
* https://flutterchina.club/widgets-intro/
*
 * TODO 注意我们是如何创建了两个新的无状态widget的！
 * TODO 我们清晰地分离了 显示 计数器（CounterDisplay）和 更改 计数器（CounterIncrementor）的逻辑。
 * TODO 尽管最终效果与前一个示例相同，但责任分离允许将复杂性逻辑封装在各个widget中，同时保持父项的简单性
 */
/*
 * 显示count的widget
 */
class CounterDisplay extends StatelessWidget {
  CounterDisplay({this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return new Text('Count: $count');
  }
}

/*
 * 增加count的widget
 */
class CounterIncrementor extends StatelessWidget {
  CounterIncrementor({this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: onPressed,
      child: new Text('Increment_2'),
    );
  }
}

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => new _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      ++_counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Row(mainAxisAlignment: MainAxisAlignment.center, //子widgets居中
        children: <Widget>[
          new CounterIncrementor(onPressed: _increment),
          new CounterDisplay(count: _counter),
        ]);
  }
}


/*
 * TODO 注意我们是如何创建了两个新的无状态widget的！
 * TODO 我们清晰地分离了 显示 计数器（CounterDisplay）和 更改 计数器（CounterIncrementor）的逻辑。
 * TODO 尽管最终效果与前一个示例相同，但责任分离允许将复杂性逻辑封装在各个widget中，同时保持父项的简单性
 */