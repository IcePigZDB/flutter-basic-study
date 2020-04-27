import 'package:flutter/material.dart';

class AppBarDemoPage extends StatelessWidget {
  const AppBarDemoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("AppBarDemoPage"), 
        // backgroundColor: Colors.red, 
        // 菜单按钮会覆盖了 <-返回箭头
        centerTitle:true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: (){
            print('menu');
          },
        ), 
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              print('search');
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: (){
              print('settings');
            },
          )
        ],

      ),
      body: Text('1111'),
    );
  }
}