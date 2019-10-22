import 'package:flutter/material.dart';
import 'package:flutter_app/widget/common/common_widget.dart';

//https://api.flutter.dev/flutter/widgets/Image-class.html
void main() {
  showWidgetByCallback(fetchWidgetCallback);
}

Widget fetchWidgetCallback(BuildContext context) {
  return const Image(
    image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
  );
}

/*
*TODO 从不同的位置加载图片
*TODO new Image, for obtaining an image from an ImageProvider.
*TODO new Image.asset, for obtaining an image from an AssetBundle using a key.
*TODO new Image.network, for obtaining an image from a URL.
*TODO new Image.file, for obtaining an image from a File.
*TODO new Image.memory, for obtaining an image from a Uint8List.
* 
 */
