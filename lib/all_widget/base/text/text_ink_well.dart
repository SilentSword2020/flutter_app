import 'package:flutter/material.dart';
import 'package:flutter_app/widget/common/common_widget.dart';

//https://api.flutter.dev/flutter/material/InkWell-class.html
void main() {
  showWidgetByCallback(fetchWidgetCallback);
}

Widget fetchWidgetCallback(BuildContext context) {
  return MyStatefulWidget();
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}
//TODO 波纹效果
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  double sideLength = 50;

  Widget build(BuildContext context) {
    return Center(
      child: AnimatedContainer( //动画容器
        height: sideLength,
        width: sideLength,
        duration: Duration(seconds: 1),
        curve: Curves.easeIn,//相关于动画加速器
        child: Material(
          color: Colors.blue,
          child: InkWell(
            onTap: () {
              setState(() {
                sideLength == 50 ? sideLength = 100 : sideLength = 50;
              });
            },
          ),
        ),
      ),
    );
  }
}
