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
        width: 300,
        height: 300,
        // 把图片放到 decoration里面
        decoration: BoxDecoration(
          color: Colors.yellow,
          // borderRadius: BorderRadius.all(
          //   Radius.circular(150),
          // )
          borderRadius: BorderRadius.circular(150),
          image: DecorationImage(
            image:NetworkImage("http://www.ionic.wang/statics/index/images/ionic4.png"),
            fit: BoxFit.cover
          )

        ),

      )
    );
  }
}
