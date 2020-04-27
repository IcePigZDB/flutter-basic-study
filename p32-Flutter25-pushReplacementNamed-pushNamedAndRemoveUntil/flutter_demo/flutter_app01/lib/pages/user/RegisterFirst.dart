import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterFirstPage extends StatelessWidget {
  const RegisterFirstPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第一步-输入手机号")
      ),
      body:Column(
        children: <Widget>[
          SizedBox(height: 40),
          Text("这是注册的第一步,请输入您的手机号 然后点击下一步"),
          SizedBox(height: 40),
          RaisedButton(
            child: Text('下一步'),
            onPressed: (){
                // Navigator.pushNamed(context, '/registerSecond');

                // 01替换路由 替换之后相当于从栈中把上一个页面的路由替换成了当前的,pop的时候会少一个
                Navigator.of(context).pushReplacementNamed('/registerSecond');
            },
          )
        ],
      )
    );
  }
}