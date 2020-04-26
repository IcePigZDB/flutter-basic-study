import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title:Text("flutter demo")
        ),
        body:HomeContent() 
      )
    );
  }
}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
          child: Container(
              child: Text(
                '各位同学大家好我是主讲老师大地，各位同学大家好我是主讲老师大地',
                // 对齐
                textAlign:TextAlign.left,
                // 配合maxLines，当文字超出行之后之后，ellipsis会显示...
                overflow:TextOverflow.ellipsis ,
                // overflow:TextOverflow.fade ,
                maxLines: 2,
                // 字体显示倍率
                textScaleFactor: 1.8,
                // 字体样式
                style:TextStyle(
                  fontSize: 16.0,
                  color:Colors.red,
                  // color:Color.fromARGB(a, r, g, b)
                  // 字体加粗
                  fontWeight: FontWeight.w800,
                  // 意大利斜体
                  fontStyle: FontStyle.italic,
                  // 下面几个描述了一条白色的虚线 lineThrough字体
                  decoration:TextDecoration.lineThrough,
                  decorationColor:Colors.white,
                  decorationStyle: TextDecorationStyle.dashed,
                  // 字间距
                  letterSpacing: 5.0

                )
              
              ),
              height: 300.0,
              width: 300.0,
              // 装饰
              decoration: BoxDecoration(
                color: Colors.yellow,
                // 边框
                border: Border.all(
                  color: Colors.blue,
                  width: 2.0
                ),
                // 边框圆角
                borderRadius: BorderRadius.all(
                //  Radius.circular(150),    //圆形
                  Radius.circular(10),  
                )
              ),
              // pading 内边距container与里面元素的距离
              // margin 外边距container与其他元素的距离
              // 四边
              // padding:EdgeInsets.all(20),
              // left top right
              padding:EdgeInsets.fromLTRB(10, 30, 5, 0),

              margin: EdgeInsets.fromLTRB(10, 30, 5, 0),

              // 基本用不上的玩意
              // xyz移动距离
              // transform:Matrix4.translationValues(100,0,0),
              // 绕左上角旋转
              // transform:Matrix4.rotationZ(0.3),
              // xyz轴的缩放
              // transform:Matrix4.diagonal3Values(1.2, 1, 1),

              // Container里面元素相对 Container的位置
              alignment: Alignment.bottomLeft,
            


          ),
    );
  }
  
}