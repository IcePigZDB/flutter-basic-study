import 'package:flutter/material.dart';

void main(){
  // 入口方法
  // dart新建类对象可以省略new
  runApp(MyApp());
}

//自定义组件 继承StatelessWidget 需要实现虚函数build
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // 根组件MaterialApp 包含home theme等参数
    return MaterialApp(
      // Scaffold 包含Appbar body
      home:Scaffold(
        appBar:AppBar(
            title:Text('Flutter Demo')
        ),
        body:HomeContent(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
    );
  }

}

//
class HomeContent extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child:Text(
        '你好Flutter 111',
        textDirection: TextDirection.ltr,

        style: TextStyle(
            fontSize: 40.0,
            color: Colors.yellow,
            // color: Color.fromRGBO(244, 233, 121, 0.5),
        ),
      )
    );
  }
}