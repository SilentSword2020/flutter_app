import 'package:flutter/material.dart';

//https://flutterchina.club/cookbook/images/network-image/

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var title = 'Web Images';

    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new Image.network(
            //gif图片
            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1572254525495&di=b28cb897dcd27eb6cd1bb6c039835d9c&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2F2f361936065a8c7d4927be1f02f2e9b469c6feca30d4f-ff3yli_fw658'

            //普通jpg
            //'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1572254486307&di=19476d5dd0190fff47a6eb89d066c313&imgtype=0&src=http%3A%2F%2Fbbs-fd.zol-img.com.cn%2Ft_s1200x5000%2Fg1%2FM05%2F0B%2F0A%2FCg-4jlMScLiIVkggAADg-N1fWgQAAJuYwJMa34AAOEQ253.jpg',
            ),
      ),
    );
  }
}
