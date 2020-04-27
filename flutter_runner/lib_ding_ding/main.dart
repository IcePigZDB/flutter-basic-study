import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'model/routes.dart';
import 'ui/home_page.dart';
import 'ui/study_page.dart';
// import 'package:flutterapp/ui/home_page.dart';
// import 'package:flutterapp/model/routes.dart';

// const 定义时定值不可变
// final 只允许赋值一次然后不可变，可在定义时赋值，也可后期赋值

void main() {
  runApp(MyApp());
}

//
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      // routes: RoutePath,
      home: new HomePage(),
    );
  }
}

