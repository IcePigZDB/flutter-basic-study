
import '../model/study_moudle_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../model/device_size.dart';
import '../model/color.dart';
import '../model/routes.dart';
// import 'package:flutterapp/model/device_size.dart';
// import 'package:flutterapp/model/color.dart';
// import 'package:flutterapp/model/study_moudle_data.dart';

class StudyPage extends StatefulWidget{
  @override
  createState() => new _StudyPageState();
}

BuildContext studyPageContext;   // 实在不想函数传参了，乱写吧。


class _StudyPageState extends State<StudyPage>{
  // 需要动态改变的状态值得放在build之外……
  // 选择框的当前值
  int currentTextbookId = textbooks[0]["id"];   // 不要搞私有……

  @override
  Widget build(BuildContext context) {
    // 设备尺寸
    studyPageContext = context;
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
          color: AppColor.bgColor,
        ),
        width: deviceSize.width,   // 其实是默认的
        height: deviceSize.height,
        child: new Column(
          textDirection: TextDirection.ltr,
          // 子组件放在开始位置
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // 返回按钮 + 下拉选择框
            new Container(
              alignment: Alignment(-1, 0),  // x/y,-1~+1,(0,0)表示正中
              padding: EdgeInsets.all(0),
              margin: EdgeInsets.fromLTRB(0, deviceSize.height*(deviceSize.paddingTopRate + 0.02), 0, 0),
              height: deviceSize.height*0.06,
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  // 返回按钮
                  new IconButton(
                    padding: EdgeInsets.all(0),   // 默认8.0真是难受到我了
                    icon: new Icon(
                      Icons.arrow_back,
                      color: AppColor.commonIconColor,
                      size: deviceSize.width*0.07,
                      textDirection: TextDirection.ltr,
                    ),
                    onPressed:()=>Navigator.pop(studyPageContext),
                  ),
                  // 下拉选择框
                  new Container(
                    alignment: Alignment(0, 0),  // x/y,-1~+1,(0,0)表示正中
                    padding: EdgeInsets.all(0),
                    margin: EdgeInsets.fromLTRB(0, 0, deviceSize.width*0.2, 0),
                    width: deviceSize.width*0.6,
                    height: deviceSize.height*0.06,
                    decoration: new BoxDecoration(
                      border: new Border.all(width: 1.0, color: AppColor.searchBoxBorderColor),
                      color: AppColor.searchBoxFillColor,
                      borderRadius: new BorderRadius.all(new Radius.circular(deviceSize.height*0.03)),
                    ),
                    child: new DropdownButton(
                      value: currentTextbookId,
                      icon: new Icon(
                        Icons.arrow_drop_down,
                        color: AppColor.commonIconColor,
                        size: deviceSize.width*0.07,
                      ),
                      items: textbooks.map((item) =>DropdownMenuItem(
                        child: SizedBox(
                          width: deviceSize.width*0.4,
                          child: Text(
                            item["value"],
                            textAlign: TextAlign.center, //this will do that
                            style: TextStyle(color: currentTextbookId==item["id"]?AppColor.commonTextColor:AppColor.unSelectTextColor),
                          ),
                        ),
                        value: item["id"],
                      )).toList(),
                      onChanged: (textBookId){  // 哇擦，这玩意类型是value的类型，为了少一个参数试出来了
                        setState(() {
                         currentTextbookId = textBookId;
                        });
                      },
                      underline: Container(),   // 不要下划线
                      isDense: true,
                    ),
                  ),
                ],
              ),
            ),

            // 课文字内容
            new Container(
              alignment: Alignment(-1, 0),  // x/y,-1~+1,(0,0)表示正中
              padding: EdgeInsets.all(0),
              margin: EdgeInsets.fromLTRB(0,deviceSize.height*0.025,0,0),
              height: deviceSize.height*0.75,
              width: deviceSize.width*0.9,
              decoration: new BoxDecoration(
                //border: new Border.all(width: 1.0, color: AppColor.searchBoxBorderColor),
                color: AppColor.commonBoxFillColor,
                borderRadius: new BorderRadius.all(new Radius.circular(deviceSize.width*0.015)),
            ),
              child:Scrollbar(
                child:ListView.builder(
                  padding: EdgeInsets.all(0),   // 果然又有默认值……呵呵
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    int courseIndex = index + 1;  // 课文的序号是下标加1
                    // 每一个Container装一个课文，元素包括课文名、收藏图标、已学会的字占比、文字卡片。
                    // 首先计算该Container的高度
                    int wordNum = courses["words"][index].length;
                    int wordColumnNum = wordNum ~/ 4 + (wordNum % 4 == 0 ? 0 : 1);

                    return Container(
                      alignment: Alignment(0, 0),  // x/y,-1~+1,(0,0)表示正中
                      padding: EdgeInsets.all(0),
                      margin: EdgeInsets.all(0),
                      width: deviceSize.width*0.9,
                      height: deviceSize.width*wordColumnNum*0.225 + deviceSize.height*0.06,
                      child: Column(
                        children:[
                          // 首先是一行 课文名、收藏图标、已学会的字占比
                          Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(0),
                            margin: EdgeInsets.all(0),
                            width: deviceSize.width*0.9,
                            height: deviceSize.height*0.05,
                            child:Row(
                              children: [  // 加SizeBox是为了位置合适
                                // 已学会的字占比

                                Container(
                                  padding: EdgeInsets.all(0),
                                  margin: EdgeInsets.all(0),
                                  alignment: Alignment.center,
                                  width: deviceSize.width*0.25,
                                  height: deviceSize.height*0.05,
                                  child:Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "已学: ",
                                          style:TextStyle(
                                            color:AppColor.unSelectTextColor,
                                            fontSize: deviceSize.height*0.022,
                                          ),
                                        ),
                                        TextSpan(
                                          text: hasStudyWords[index].length.toString() + ' / ' + courses["words"][index].length.toString(),
                                          style:TextStyle(
                                            color: AppColor.studyProgressColor,
                                            fontSize: deviceSize.height*0.022,
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                // 课文名
                                Container(
                                  width: deviceSize.width*0.45,
                                  height: deviceSize.height*0.05,
                                  padding: EdgeInsets.all(0),
                                  alignment: Alignment.center,
                                  child:Text("$courseIndex." + courses["courses"][index],
                                    style: TextStyle(
                                      color: AppColor.commonTextColor,
                                      fontSize: deviceSize.height*0.022,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                // 上次学到这里的图标
                                Container(
                                  width: deviceSize.width*0.1,
                                  height: deviceSize.height*0.05,
                                  padding: EdgeInsets.all(0),
                                  margin: EdgeInsets.fromLTRB(deviceSize.width*0.06, 0, 0, 0),
                                  alignment: Alignment.center,
                                  child:lastStudyPoint==index?Icon(
                                    Icons.star,
                                    color: AppColor.lightYellow,
                                    size: deviceSize.width*0.07,
                                  ):null,
                                ),
                              ],
                            ),
                          ),

                          // 然后是一波字卡片
                          Container(
                            padding: EdgeInsets.all(0),
                            margin: EdgeInsets.all(0),
                            height: deviceSize.width*wordColumnNum*0.225,
                            width: deviceSize.width*0.9,
                            child:Wrap(// 自动换行的流式布局，相见恨晚
                              children: courses["words"][index].map<Widget>((item) => Container(
                                margin: EdgeInsets.all(deviceSize.width*0.02),
                                padding: EdgeInsets.all(0),
                                alignment: Alignment.center,
                                height: deviceSize.width*0.185,
                                width: deviceSize.width*0.185,
                                decoration: new BoxDecoration(
                                  //border: new Border.all(width: 1.0, color: AppColor.searchBoxBorderColor),
                                  borderRadius: new BorderRadius.all(new Radius.circular(3)),
                                  color: hasStudyWords[index].contains(item)?AppColor.darkBlue:AppColor.lightBlue,
                                ),
                                child: FlatButton(
                                  padding: EdgeInsets.all(0),

                                  child: Text(item,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: deviceSize.width*0.1,
                                      color: hasStudyWords[index].contains(item)?AppColor.baseCardTextColor:AppColor.blueCardTextColor,
                                    ),
                                  ),
                                  onPressed: null,
                                ),
                              )).toList(),
                          ),
                          ),

                          // 最后来个分割线
                          Container(
                            width: deviceSize.width*0.8,
                            height: deviceSize.height*0.002,
                            color: AppColor.splitLineColor,
                            padding: EdgeInsets.all(0),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),

            // 搜索框
            new Container(
              alignment: Alignment(0, 0),  // x/y,-1~+1,(0,0)表示正中
              padding: EdgeInsets.symmetric(horizontal: deviceSize.width*0.01),
              margin: EdgeInsets.fromLTRB(0, deviceSize.height*0.025, 0, 0),
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
            ),
          ],
        ),
      ),
    );
  }
}