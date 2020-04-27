import 'package:flutter/material.dart';

class ProductInfoPage extends StatefulWidget {
  final Map arguments;
  ProductInfoPage({Key key,this.arguments}) : super(key: key);
  // arguments:this.arguments
  _ProductInfoPageState createState() => _ProductInfoPageState();
}

class _ProductInfoPageState extends State<ProductInfoPage> {
  // Map arguments;
  // {this.arguments}
  _ProductInfoPageState();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品详情'),
      ),
      body: Container(
        // arguments["pid"]
        child: Text("pid=${widget.arguments}"),
      ),
    );
  }
}