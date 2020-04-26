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

        // ClipOval组件 直接就定义了圆形图片组件
        child: ClipOval(
            child: Image.network(              
              'http://www.ionic.wang/statics/index/images/ionic4.png',
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            
            ),
        ),
        
      )
    );
  }
}
