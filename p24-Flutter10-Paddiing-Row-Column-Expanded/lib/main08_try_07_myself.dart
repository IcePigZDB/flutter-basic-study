import 'dart:ui';

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

/*

  模仿08,最外层改用ListView实现,如果要padding的话就再套娃吧
  ListView <Containner(Text('你好Flutter')), siezebox(height:10) ,Container(Row<Expanded(flex:2,image),Expanded(flex:1,ListView<Container(height:85,image),sizebox(height:10),Container(height:85,image)>>)>

*/
class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Container(
        height: 180,
        color: Colors.black,
        padding:EdgeInsets.all(10),
        child: Text('你好Flutter！',
            style: TextStyle(fontSize: 30, color: Colors.pink)),
        alignment: Alignment.center,
      ),
      SizedBox(
        height: 10,
      ),
      Container(
          child: Row(children: <Widget>[
        Expanded(
          flex: 2,
          child: Container(
            height: 180,
            child: Image.network("https://www.itying.com/images/flutter/2.png",
                fit: BoxFit.cover),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          flex: 1,
          child: Container(
            height: 180,
            child: ListView(
              children: <Widget>[
                Container(
                  height: 85,
                  child: Image.network(
                      "https://www.itying.com/images/flutter/3.png",
                      fit: BoxFit.cover),
                ),
                SizedBox(height: 10),
                Container(
                  height: 85,
                  child: Image.network(
                      "https://www.itying.com/images/flutter/4.png",
                      fit: BoxFit.cover),
                )
              ],
            ),
          ),
        )
      ])),
    ]);
  }
}

/*
class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[

        Row(
          children: <Widget>[
            Expanded(
              child:   Container(
                height: 180,
                color: Colors.black,
                child: Text('你好Flutter'),
              ),
            )
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                height: 180,
                child: Image.network("https://www.itying.com/images/flutter/2.png",fit: BoxFit.cover),
              )
            ),
            SizedBox(width: 10),
            Expanded(
              flex: 1,
              child: Container(
                height: 180,
                child: ListView(
                  children: <Widget>[
                    Container(
                      height: 85,
                      child: Image.network("https://www.itying.com/images/flutter/3.png",fit: BoxFit.cover),

                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 85,
                      child: Image.network("https://www.itying.com/images/flutter/4.png",fit: BoxFit.cover),
                    )
                  ],
                )
              )
            ),

          ],
        )
      ],
    );
  }
}
*/ 
