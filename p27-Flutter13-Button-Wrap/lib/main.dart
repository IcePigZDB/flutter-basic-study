import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) { 
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
    return Wrap(
          spacing:10,
          runSpacing: 10,
          // 横着放还是竖着放
          // direction: Axis.vertical,
          // 主轴对齐方式
          // alignment:WrapAlignment.spaceEvenly,
          // run如果是横着放run就是新的一行 runspacing就是行间距
          // runAlignment: WrapAlignment.center,
          children: <Widget>[
                MyButton("第1集"),
                MyButton("第2集"),
                MyButton("第3集"),
                MyButton("第4集"),
                MyButton("第5集"),
                MyButton("第6集"),
                MyButton("第7集"),
                MyButton("第8集"),
                MyButton("第9集"),
                MyButton("第10集"),
                MyButton("第11集"),
                 MyButton("第3集"),
                MyButton("第4集"),
                MyButton("第5集"),
                MyButton("第6集"),
                MyButton("第7集"),
                MyButton("第8集"),
                MyButton("第9集"),
                MyButton("第10集"),
                MyButton("第11集"),
          ],
      
    );
  }
}

class MyButton extends StatelessWidget{
  final String text;
  const MyButton(this.text,{Key key}) : super(key: key); 
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      child: Text(this.text),
      textColor:Theme.of(context).accentColor,
      onPressed: (){        
      }
    );
  }
}