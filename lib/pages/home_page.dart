import 'package:dev_Flutter_demo/tools/swiper_Diy.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import '../NetRequest/service_method.dart';
import 'dart:convert'; //json
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('首页页面---')),
        body: FutureBuilder(
          //异步构造器
          future: xxmethod(), //调用异步方法
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var data = json.decode(snapshot.data.toString());
              print(data);
              return Column(
                children: [
                  SwiperDiy(swiperDataList: ["1", "2", "3"])
                ],
              );
            } else {
              return Center(
                child: Text('xxxxxxx'),
              );
            }
          },
        ));
  }
}
