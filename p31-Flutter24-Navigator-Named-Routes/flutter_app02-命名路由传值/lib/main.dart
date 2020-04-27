import 'package:flutter/material.dart';



import 'routes/Routes.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {  
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home:Tabs(),   
      // 把home也抽离出去了
      initialRoute: '/',     //初始化的时候加载的路由
      // 不加括号是复制代码,加括号是运行
      onGenerateRoute: onGenerateRoute
     
    );
  }
}
