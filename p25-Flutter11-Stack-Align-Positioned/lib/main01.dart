import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('FlutterDemo')),
      body: LayoutDemo(),
    ));
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Stack(
        // 如果有多个小元素,小元素会重叠,所以用Align 和Positioned
        alignment: Alignment.topLeft,
        children: <Widget>[              
          Container(
            height: 400,
            width: 300,
            color: Colors.red,
          ),
          Text('我是一个文本',style: TextStyle(
            fontSize: 40,
            color: Colors.white
          ))           
        ],
      ),
    );
  }
}
