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
        body: LayoutDemo(),
      ));
  }
}
class LayoutDemo extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      
      children: listData.map((value){
        return Card(
          margin: EdgeInsets.all(10),
          child:Column(
              children: <Widget>[
                  AspectRatio(
                    aspectRatio: 20/9,
                    child: Image.network(value["imageUrl"],fit: BoxFit.cover,),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage:NetworkImage(value["imageUrl"])
                    ),
                    title: Text(value["title"]),
                    // Todo 没搞明白为什么直接去取这个数据拿来是空的 
                    subtitle: Text(value["description"] ==null? '' : value["description"],maxLines: 1,overflow: TextOverflow.ellipsis),                    
                  )
              ],
          ),

        );

      }).toList(),
    );
  }
}