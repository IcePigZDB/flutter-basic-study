import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {

  String title;
  // 可选参数,如果不传就用默认值
  FormPage({this.title="表单"});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text('返回'),
        onPressed: (){
          // 返回上一层
          Navigator.of(context).pop();
        },
      ),
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: ListView(
        children: <Widget>[

          ListTile(
            title: Text('我是表单页面'),
          ),
             ListTile(
            title: Text('我是表单页面'),
          ),
             ListTile(
            title: Text('我是表单页面'),
          ),
             ListTile(
            title: Text('我是表单页面'),
          )
        ],
      ),
    );
  }
}