import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

//https://flutterchina.club/get-started/codelab/
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final wordPair = new WordPair.random();

    return new MaterialApp(
      //切换app时，上面显示的标题
      title: 'Welcome to Flutter',
      //页面内容
      home: new Scaffold(
        //标题栏
        appBar: new AppBar(
          title: new Text('StatefulWidget'),
        ),
        body: new Center(
          //居中
          //child: new Text('Hello World !!'),
          child: new RandomWords(),
        ),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return new Text(wordPair.asPascalCase);
  }
}
