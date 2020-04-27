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
      body: HomeContent(),
    ));
  }
}
class HomeContent extends StatelessWidget {  


  //自定义方法
  Widget _getListData(context,index){
        return ListTile(           
            title: Text(listData[index]["title"]),
            leading:Image.network(listData[index]["imageUrl"]),          
            subtitle:Text(listData[index]["author"])
        );
  }

  @override
  Widget build(BuildContext context) {    
    // TODO: implement build
    // 05 ListView.builder调用现有的res里面的List<Widget>
    return ListView.builder(
        // 这边传的是List的长度
        itemCount:listData.length,

        // _getListData函数不能调用，就是不能加括号
        // 一定要传 context,index 两个参数
        // Widget
        itemBuilder:this._getListData
    );
  }
}
