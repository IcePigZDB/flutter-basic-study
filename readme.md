# Flutter基础学习快速入门教程源码及笔记文档

**本套教程基于 [IT营大地老师 Dart-Flutter 教程视频](https://www.bilibili.com/video/av52490605?p=1)，各位同学可前往哔哩哔哩上免费观看，配合本套教程查漏补缺，墙裂推荐！！！**
所有资料是从大地老师在评论区提供的百度云链接中下载得到，删除了视频文件和每个小项目中源代码的除lib部分。

**笔记文档是pdf文件，建议大家下载到本地之后学习，如果是VsCode可以安装插件vscode-pdf**
**我自己使用的时候遇到的坑**
 * Windows VsCode 跑flutter run，路径不能带中文。
 * 因为我的自己的真机不是Android X,直接拿大地老师的源码（Android X）跑好像会比较慢，所以我在根目录上添加了一个根据自己SDK版本的自己新建的flutter项目，每个新的章节我单独替换lib/main.dart，然后热重载，这种办法在前几个项目还可以，当后面用到了StatefulWidget之后有时热重载就不能生效了，这时候要用flutter run命令。
 * 关于Assets如图片，需要在pubspec.yaml里面配置如 项目p19-Flutter06 用到了本地图片，在pubspec.yaml中添加了以下配置行：
 * 项目文件中的build太大了，而且能本地生成，所以我添加到了.gitignore中。
    ```yml
    // 添加assets
    assets:
        - images/a.jpeg
        - images/2.0x/a.jpeg
        - images/3.0x/a.jpeg   
    ```
* 本仓库是本系列入门视频的后半部分，前半部分资料由另一个人整理，我前半部分是fork的他的仓库，并且启发了本仓库的诞生，他的仓库地址是[dart_basic_stud](https://github.com/XPoet/dart-basic-study)。
* p40-p45的源代码我没有找到，如果仓库中有不小心没整理好的，欢迎同学补充。
## 目录：

- [p15-Flutter01-InstallFlutter-win](https://github.com/IcePigZDB/flutter-basic-study/tree/master/p15-Flutter01-InstallFlutter-win)
- [p16-Flutter02-Vscode-flutter-config&Real-phone-debug](https://github.com/IcePigZDB/flutter-basic-study/tree/master/p16-Flutter02-Vscode-flutter-config&Real-phone-debug)
- [p17-Flutter03-InstallFlutter-mac](https://github.com/IcePigZDB/flutter-basic-study/tree/master/p17-Flutter03-InstallFlutter-mac)
- [p18-Flutter04-Directory-tree](https://github.com/IcePigZDB/flutter-basic-study/tree/master/p18-Flutter04-Directory-tree)
- [p19-Flutter05-Container-Text](https://github.com/IcePigZDB/flutter-basic-study/tree/master/p19-Flutter05-Container-Text)
- [p20-Flutter06-images](https://github.com/IcePigZDB/flutter-basic-study/tree/master/p20-Flutter06-images)
- [p21-Flutter07-ListView](https://github.com/IcePigZDB/flutter-basic-study/tree/master/p21-Flutter07-ListView)
- [p22-Flutter08-Dynamic-ListView](https://github.com/IcePigZDB/flutter-basic-study/tree/master/p22-Flutter08-Dynamic-ListView)
- [p23-Flutter09-GridView](https://github.com/IcePigZDB/flutter-basic-study/tree/master/p23-Flutter09-GridView)
- [p24-Flutter10-Paddiing-Row-Column-Expanded](https://github.com/IcePigZDB/flutter-basic-study/tree/master/p24-Flutter10-Paddiing-Row-Column-Expanded)
- [p25-Flutter11-Stack-Align-Positioned](https://github.com/IcePigZDB/flutter-basic-study/tree/master/p25-Flutter11-Stack-Align-Positioned)
- [p26-Flutter12-AspectRatio-Card-CircleAvatar](https://github.com/IcePigZDB/flutter-basic-study/tree/master/p26-Flutter12-AspectRatio-Card-CircleAvatar)
- [p27-Flutter13-Button-Wrap](https://github.com/IcePigZDB/flutter-basic-study/tree/master/p27-Flutter13-Button-Wrap)
- [p28-Flutter14-StatefulWidget-setState](https://github.com/IcePigZDB/flutter-basic-study/tree/master/p28-Flutter14-StatefulWidget-setState)
- [p29-Flutter15-BottomNavigationBar-Pages](https://github.com/IcePigZDB/flutter-basic-study/tree/master/p29-Flutter15-BottomNavigationBar-Pages)
- [p30-Flutter23-Navigator-Normal-Routes](https://github.com/IcePigZDB/flutter-basic-study/tree/master/p30-Flutter23-Navigator-Normal-Routes)
- [p31-Flutter24-Navigator-Named-Routes](https://github.com/IcePigZDB/flutter-basic-study/tree/master/p31-Flutter24-Navigator-Named-Routes)
- [p32-Flutter25-pushReplacementNamed-pushNamedAndRemoveUntil](https://github.com/IcePigZDB/flutter-basic-study/tree/master/p32-Flutter25-pushReplacementNamed-pushNamedAndRemoveUntil)
- [p33-Flutter26-custome-AppBar](https://github.com/IcePigZDB/flutter-basic-study/tree/master/p33-Flutter26-custome-AppBar)
- [p34-Flutter27-TarBar](https://github.com/IcePigZDB/flutter-basic-study/tree/master/p34-Flutter27-TarBar)
- [p35-Flutter28-Drawer-DrawerHeader](https://github.com/IcePigZDB/flutter-basic-study/tree/master/p35-Flutter28-Drawer-DrawerHeader)
- [p36-Flutter29-RaisedButton-ButtonFlatButton-OutlineButton-IconButton-ButtonBar](https://github.com/IcePigZDB/flutter-basic-study/tree/master/p36-Flutter29-RaisedButton-ButtonFlatButton-OutlineButton-IconButton-ButtonBar)
- [p37-Flutter30-FloatingActionButton](https://github.com/IcePigZDB/flutter-basic-study/tree/master/p37-Flutter30-FloatingActionButton)
- [p38-Flutter31-TextField-CheckBox-CheckBoxListTile](https://github.com/IcePigZDB/flutter-basic-study/tree/master/p38-Flutter31-TextField-CheckBox-CheckBoxListTile)
- [p39-Flutter32-Radio-RadioList-Switch](https://github.com/IcePigZDB/flutter-basic-study/tree/master/p39-Flutter32-Radio-RadioList-Switch)


附：
- [Dart官网](https://dart.dev/)
- [Dart中文网](https://www.dartcn.com/)
- [Flutter官网](https://flutter.dev/)
- [Flutter中文网](https://flutterchina.club/)