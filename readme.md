# Flutter基础学习快速入门教程源码及笔记文档

**本套教程基于 \*[IT营大地老师 Dart-Flutter 教程视频](https://www.bilibili.com/video/av52490605?p=1)\*，各位同学可前往哔哩哔哩上免费观看，配合本套教程查漏补缺，墙裂推荐！！！**所有资料是从大地老师在评论区提供的百度云链接中下载得到，剔除了视频文件。

**笔记文档是pdf文件，建议大家下载之后学习，如果是VsCode可以安装插件vscode-pdf**
**我自己使用的时候遇到的坑**
 * Windows VsCode 跑flutter run，路径不能带中文。
 * 因为我的自己的真机是Android 8.0,直接拿大地老师的源码（Android X）跑会比较慢，我在根目录上添加了一个SDK26-8.0版本的自己新建的flutter项目，每个新的章节我单独替换lib/main.dart，然后热重载即可。
 * 关于Assets如图片，需要在pubspec.yaml里面配置如 项目p19-Flutter06 用到了本地图片，在pubspec.yaml中添加了以下配置行：
    ```yml
    // 添加assets
    assets:
        - images/a.jpeg
        - images/2.0x/a.jpeg
        - images/3.0x/a.jpeg   
    ```

目录：

- [01 Dart简介](https://github.com/XPoet/dart-basic-study/blob/master/01 Dart简介)
- [02 Dart命名规则、入口方法、变量和常量](https://github.com/XPoet/dart-basic-study/blob/master/02 Dart命名规则、入口方法、变量和常量)
- [03 数据类型](https://github.com/XPoet/dart-basic-study/blob/master/03 Dart数据类型)
- [04 Dart运算符、条件表达式、类型转换](https://github.com/XPoet/dart-basic-study/blob/master/04 Dart运算符、条件表达式、类型转换)
- [05 Dart循环语句](https://github.com/XPoet/dart-basic-study/blob/master/05 Dart循环语句)
- [06 Dart集合类型List、Set、Map详解](https://github.com/XPoet/dart-basic-study/blob/master/06 Dart集合类型List、Set、Map详解)
- [07 Dart函数](https://github.com/XPoet/dart-basic-study/blob/master/07 Dart函数)
- [08 Dart类](https://github.com/XPoet/dart-basic-study/blob/master/08 Dart类)
- [09 Dart接口](https://github.com/XPoet/dart-basic-study/blob/master/09 Dart接口)
- [10 Dart泛型](https://github.com/XPoet/dart-basic-study/blob/master/10 Dart泛型)
- [11 Dart库](https://github.com/XPoet/dart-basic-study/blob/master/11 Dart库)

附：

* 本仓库是本系列入门视频的后半部分，前半部分资料由另一个人整理，我前半部分是fork的他的仓库，并且启发了本仓库的诞生，他的仓库地址是[dart_basic_stud](https://github.com/XPoet/dart-basic-study)。

- [Dart官网](https://dart.dev/)
- [Dart中文网](https://www.dartcn.com/)
- [Flutter官网](https://flutter.dev/)
- [Flutter中文网](https://flutterchina.club/)