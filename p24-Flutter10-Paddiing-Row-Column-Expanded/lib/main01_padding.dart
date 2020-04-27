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
    return Padding(
      // bottom 可以设置个10 ，强迫症
      //套娃 
      // 内层是左上 嵌套起来的
      // 外层负责 最右边和最下边的10

      padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.7,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network('https://www.itying.com/images/flutter/1.png',
                fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network('https://www.itying.com/images/flutter/2.png',
                fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network('https://www.itying.com/images/flutter/3.png',
                fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network('https://www.itying.com/images/flutter/4.png',
                fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network('https://www.itying.com/images/flutter/5.png',
                fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network('https://www.itying.com/images/flutter/6.png',
                fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network('https://www.itying.com/images/flutter/1.png',
                fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network('https://www.itying.com/images/flutter/2.png',
                fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network('https://www.itying.com/images/flutter/3.png',
                fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network('https://www.itying.com/images/flutter/4.png',
                fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network('https://www.itying.com/images/flutter/5.png',
                fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network('https://www.itying.com/images/flutter/6.png',
                fit: BoxFit.cover),
          )
        ],
    ));
  }
}
