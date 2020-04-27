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
    return Container(
      height: 800.0,
      width: 400.0,
      color: Colors.pink,
      child: Row(
        // 主轴x轴，均匀分布
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,    
        // 次轴y轴 start在Container最上面，end在Container最下面
        crossAxisAlignment: CrossAxisAlignment.start,     //用的比较少
        children: <Widget>[
          IconContainer(Icons.search,color: Colors.blue),
          IconContainer(Icons.home,color: Colors.orange),
          IconContainer(Icons.select_all,color: Colors.red),
        ],
      ),
    );
  }
}


class IconContainer extends StatelessWidget{
  double size=32.0;
  Color color=Colors.red;
  IconData icon;
  IconContainer(this.icon,{this.color,this.size});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100.0,
      width: 100.0,
      color: this.color,
      child: Center(
        child: Icon(this.icon,size: this.size,color: Colors.white)
      ),
    );
  }
}