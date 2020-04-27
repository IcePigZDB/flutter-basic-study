import 'package:flutter/material.dart';
import 'res/listData.dart';

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
    return Container(
      width: 200,
      // AspecRatio就是宽高比,高由Container确定了
      child: AspectRatio(
        aspectRatio: 2.0/1.0,
        child: Container(
          color: Colors.red,
        ),
      ),

    );
  }
}