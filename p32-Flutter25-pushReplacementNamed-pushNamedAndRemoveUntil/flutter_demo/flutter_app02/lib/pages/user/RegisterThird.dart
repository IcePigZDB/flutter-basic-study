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
              
                // 注册完成返回根页面
                // 大致是要跳转到 Tabs(),如果不是则销毁当前页面  (route) => route == null
                Navigator.of(context).pushAndRemoveUntil(
                  new MaterialPageRoute(builder: (context) => new Tabs()),                  
                   (route) => route == null
                );
            },
          )
        ],
      )
    );
  }
}