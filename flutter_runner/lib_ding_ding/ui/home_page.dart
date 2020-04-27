
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../model/device_size.dart';
import '../model/color.dart';
import '../model/routes.dart';

// import 'package:flutterapp/model/device_size.dart';
// import 'package:flutterapp/model/color.dart';
// import 'package:flutterapp/model/routes.dart';

class HomePage extends StatefulWidget{
  @override
  createState() => new _HomePageState();
}

BuildContext homePageContext;   // 实在不想函数传参了，乱写吧。

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    homePageContext = context;
    // 获取设备尺寸
    var device = MediaQuery.of(context);
    var deviceSize = new DeviceSize();
    deviceSize.width = device.size.width;
    deviceSize.height = device.size.height;
    deviceSize.paddingTopRate = device.padding.top / device.size.height;
    deviceSize.paddingBottomRate = device.padding.bottom / device.size.height;

    return new Scaffold(
      // 页面是个大container，个人习惯
      resizeToAvoidBottomInset: false,  // 饮鸩止渴的防止底部键盘弹出挤压页面变形
      body: new Container(
        alignment: Alignment(0, -1),  // x/y,-1~+1,(0,0)表示正中
        padding: EdgeInsets.all(0),
        margin: EdgeInsets.all(0),
        decoration: new BoxDecoration(
          // border: new Border.all(width: 2.0, color: Colors.red),
          //color: Color.fromRGBO(222, 252, 252, 1),
          //borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
          image: new DecorationImage(
            image: new AssetImage('images/bg.png'),
            fit: BoxFit.fill,
          ),
        ),
        width: deviceSize.width,   // 其实是默认的
        height: deviceSize.height,
        child: new Column(
          textDirection: TextDirection.ltr,
          // 子组件放在开始位置
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            getSearchBox(deviceSize),   // 搜索框
            getTextSpan(deviceSize),   // 学习进度
            getRect(deviceSize),    // 学习进度条
            getButton(deviceSize),  // 主页跳转的功能按钮
          ],
        ),
      ),
    );
  }
}

// 搜索框
Container getSearchBox(DeviceSize deviceSize){
  // 为了全部搞比例
  return new Container(
    alignment: Alignment(0, 0),  // x/y,-1~+1,(0,0)表示正中
    padding: EdgeInsets.symmetric(horizontal: deviceSize.width*0.01),
    margin: EdgeInsets.fromLTRB(0, deviceSize.height*(deviceSize.paddingTopRate + 0.02), 0, 0),
    width: deviceSize.width*0.8,
    height: deviceSize.height*0.06,
    decoration: new BoxDecoration(
      border: new Border.all(width: 1.0, color: AppColor.searchBoxBorderColor),
      color: AppColor.searchBoxFillColor,
      borderRadius: new BorderRadius.all(new Radius.circular(deviceSize.height*0.03)),
    ),
    child: new Row(
      textDirection: TextDirection.ltr,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children:<Widget>[
        new Icon(
          Icons.search,
          color: AppColor.commonIconColor,
          size: deviceSize.width*0.07,
          textDirection: TextDirection.ltr,
        ),

        new SizedBox(
          width: deviceSize.width*0.5,
          height: deviceSize.height*0.06,
          child:TextField(
            textDirection: TextDirection.ltr,
            scrollPadding: EdgeInsets.all(0),
            minLines: 1,
            style: TextStyle(
              color: AppColor.unSelectTextColor,
              fontSize: deviceSize.height*0.025,
            ),
            decoration: InputDecoration(
              hintText: "请输入你要查询的字",
              filled: false,
              border:InputBorder.none,
              contentPadding: EdgeInsets.fromLTRB(deviceSize.width*0.01,0,0,deviceSize.height*0.0175),
            ),
          ),
        ),
        new IconButton(
          padding: EdgeInsets.all(0),   // 默认8.0真是难受到我了
          icon: new Icon(
            Icons.arrow_forward,
            color: AppColor.commonIconColor,
            size: deviceSize.width*0.07,
            textDirection: TextDirection.ltr,
          ),
          onPressed: null,
        ),
      ],
    ),
  );
}

// 学习进度文本
Container getTextSpan(DeviceSize deviceSize){
  final hasStudy = 66;
  final total = 256;
  return new Container(
    alignment: Alignment(0, 0),  // x/y,-1~+1,(0,0)表示正中
    padding: EdgeInsets.all(0),
    margin: EdgeInsets.fromLTRB(0, deviceSize.height*0.01, 0, 0),
    height: deviceSize.height*0.06,
    child:new Text.rich(
      new TextSpan(
        children:[
          new TextSpan(
            text: "学习进度",
            style:TextStyle(
              color:AppColor.commonTextColor,
              fontSize: 16,
            ),
          ),
          new TextSpan(
            text: ' ' + hasStudy.toString() + ' / ' + total.toString() + ' ',
            style:TextStyle(
              color: AppColor.studyProgressColor,
              fontSize: 16,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
          new TextSpan(
            text: "字（一年级下）",
            style:TextStyle(
              color:AppColor.commonTextColor,
              fontSize: 16,
            ),
          ),
        ],
      ),
    ),
  );
}

// 学习进度条
Container getRect(DeviceSize deviceSize){
  final hasStudy = 66;
  final total = 256;
  return new Container(
    padding: EdgeInsets.all(0),
    //----------------------------------------------条条应该在的位置------头部----前面内容的高度---本身高度的一半----
    margin: EdgeInsets.fromLTRB(0,deviceSize.height*(156/812 - deviceSize.paddingTopRate - 0.15 - 0.003), 0, 0),
    height: deviceSize.height*0.006,
    width: deviceSize.width * hasStudy / total,
    color: AppColor.studyProgressColor,
  );
}

// 主页跳转的功能按钮
Container getButton(DeviceSize deviceSize){
  return new Container(
    padding: EdgeInsets.all(0),
    margin: EdgeInsets.all(0),
    height: deviceSize.height*0.63,   // 目前有三行，每行高0.21
    width: deviceSize.width,
    //color: Color.fromRGBO(19, 19, 96, 1),
    child: Table(  // 行高默认元素高度，列宽默认均分
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        TableRow(
            children: [
              getPictureButton('images/study.png', '学  习', deviceSize.width*0.5, deviceSize.height*0.21, studyPage),
              getPictureButton('images/record.png', '记  录', deviceSize.width*0.5, deviceSize.height*0.21, studyPage),
            ]
        ),
        TableRow(
            children: [
              getPictureButton('images/practice.png', '练  习', deviceSize.width*0.5, deviceSize.height*0.21, studyPage),
              getPictureButton('images/column.png', '专  栏', deviceSize.width*0.5, deviceSize.height*0.21, studyPage),
            ]
        ),
        TableRow(
            children: [
              Container(
                alignment: Alignment(0,0),
                padding: EdgeInsets.all(0),
                margin: EdgeInsets.all(0),
                width: deviceSize.width*0.5,
                height: deviceSize.height*0.21,
              ),
              getPictureButton('images/user.png', '用  户',deviceSize.width*0.5, deviceSize.height*0.21, studyPage),
            ]
        ),
      ],
    ),
  );
}

// 获取一个图片按钮
Widget getPictureButton(String imagePath, String text, double width, double height, String page){
  return Container(
    alignment: Alignment(0,0),
    padding: EdgeInsets.all(0),
    // 限制一下图片的显示大小。
    margin: EdgeInsets.fromLTRB(0, height*0.1, 0, height*0.1),
    width: width,
    height: height*0.8,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(imagePath),
        fit: BoxFit.scaleDown,
      ),
    ),
    child: FlatButton(
      padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
      color: Colors.transparent,
      child: Text(
        text,
        style: TextStyle(
          //fontWeight: FontWeight.bold,
          fontSize: 18,
          color: AppColor.commonTextColor,
        ),
      ),
      onPressed:() { Navigator.pushNamed(homePageContext, page);},
    ),
  );
}