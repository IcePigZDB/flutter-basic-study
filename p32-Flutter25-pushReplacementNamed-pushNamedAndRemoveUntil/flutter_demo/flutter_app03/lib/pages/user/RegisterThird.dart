import 'package:flutter/material.dart';

//引入tabs

import '../Tabs.dart';

class RegisterThirdPage extends StatelessWidget {
  const RegisterThirdPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第三步-完成注册")
      ),body:Column(
        children: <Widget>[
          SizedBox(height: 40),
          Text("输入密码完成注册"),
          SizedBox(height: 40),
          RaisedButton(
            child: Text('确定'),
            onPressed: (){
              
                //返回根
                Navigator.of(context).pushAndRemoveUntil(
                  // 相对02增加了参数的传递,可以确定要返回Tabs里面的哪个界面,Home ,Catagory,Setting
                  // 需要在Tabs里面增加参数接收的代码
                  new MaterialPageRoute(builder: (context) => new Tabs(index:2)),                  
                   (route) => route == null
                );
            },
          )
        ],
      )
    );
  }
}