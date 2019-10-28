import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

//https://flutterchina.club/cookbook/images/cached-images/

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Cached Images';

    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new Center(
          child: new CachedNetworkImage(
            placeholder: (context, name) {
              return new CircularProgressIndicator();
            },
            imageUrl: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1572254901270&di=580ce173de2915d8e89efee224129a41&imgtype=0&src=http%3A%2F%2Fww2.sinaimg.cn%2Flarge%2F85cc5ccbgy1fi7cyexv0wg20dw0hokjj.jpg',
          ),
        ),
      ),
    );
  }
}
