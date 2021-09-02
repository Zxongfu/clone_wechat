import 'package:flutter/material.dart';
import './app.dart';
import 'loading.dart';
import './search.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() =>
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'wechat',
      theme: mDefaultTheme,
      routes: <String,WidgetBuilder>{
        "app":(BuildContext context)=> new App(),
        "/frineds":(_)=> new WebView(initialUrl:'https://wx.qq.com/',),
        "search":(BuildContext context)=> new Search(),
      },
      home: new LoadingPage(),
    ));


final ThemeData mDefaultTheme = new ThemeData(
    primaryColor: Color(0xff303030),
    scaffoldBackgroundColor: Color(0xFFebebeb),
    cardColor: Color(0xff393a3f));

