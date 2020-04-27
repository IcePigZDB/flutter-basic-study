import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text('FlutterDemo')),
          body: HomeContent(),
     ));
  }
}
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        // 远程图片
        child: Image.network(
          "http://www.ionic.wang/statics/index/images/ionic4.png",
          
          // 填满容器，可能拉伸，剪切，保证图片不变形
          // fit:BoxFit.cover,

          // alignment 没用
          // alignment: Alignment.bottomRight,

          // 图片还是在本地处理好再放过来
          // color: Colors.blue,
          // colorBlendMode: BlendMode.screen,

          // 显示多张图片，也没啥用 x,y轴上显示多张图片
          repeat:ImageRepeat.repeat



          
        ),
        // container 属性
        width: 300,
        height: 800,
        decoration: BoxDecoration(
          color: Colors.yellow
        ),

      )
    );
  }
}
