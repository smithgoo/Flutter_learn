import 'dart:convert';

import 'package:flutter/material.dart';
import './model/post.dart';
import './demo/listview-demo.dart';
import './demo//hello.dart';
import './demo/draw_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5), //设置全局的点中按钮的显示颜色
        splashColor: Colors.white70,
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            title: Text('nagation bar'),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () => debugPrint('search btn pressed')),
            ],
            elevation: 20.0,
            bottom: TabBar(
                unselectedLabelColor: Colors.black38,
                indicatorColor: Colors.black54,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 1.0,
                tabs: <Widget>[
                  Tab(icon: Icon(Icons.local_florist)),
                  Tab(icon: Icon(Icons.change_history)),
                  Tab(icon: Icon(Icons.directions_bike)),
                ]),
          ),
          body: TabBarView(children: <Widget>[
            Icon(
              Icons.local_florist,
              size: 128.0,
              color: Colors.black12,
            ),
            Icon(
              Icons.change_history,
              size: 128.0,
              color: Colors.black12,
            ),
            Icon(
              Icons.directions_bike,
              size: 128.0,
              color: Colors.black12,
            ),
          ]),
          drawer: DrawerDemo()),
    );
  }
}
