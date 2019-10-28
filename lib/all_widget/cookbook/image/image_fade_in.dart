import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

//https://flutterchina.club/cookbook/images/fading-in-images/

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Fade in images';

    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new Stack(//相当于FrameLayout
          children: <Widget>[
            new Center(child: new CircularProgressIndicator()),
            new Center(
              child: new FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image:'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1572254901271&di=e19804367b4b9c68c52d424a520cdbbe&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2Fdc2345fae3094f65cf36bd6e46ae72cd7b9a3d30d06a1-StTO7S_fw658'
              ),
            ),
          ],
        ),
      ),
    );
  }
}