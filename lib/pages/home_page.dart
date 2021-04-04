import 'package:dev_Flutter_demo/tools/swiper_Diy.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import '../NetRequest/service_method.dart';
import 'dart:convert'; //json
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../tools/topNavigator_Diy.dart';
import '../tools/advance_Diy.dart';
import '../tools/teleCall_Diy.dart';

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
                  SwiperDiy(swiperDataList: ["1", "2", "3"]),
                  TopNavigator(
                    navigationList: [
                      {
                        "img":
                            "https://img-blog.csdnimg.cn/20190904140856701.jpg?x-oss-process=image/resize,m_fixed,h_64,w_64",
                        "name": "123"
                      },
                      {
                        "img":
                            "https://img-blog.csdnimg.cn/20190904140856701.jpg?x-oss-process=image/resize,m_fixed,h_64,w_64",
                        "name": "456"
                      },
                      {
                        "img":
                            "https://img-blog.csdnimg.cn/20190904140856701.jpg?x-oss-process=image/resize,m_fixed,h_64,w_64",
                        "name": "789"
                      },
                      {
                        "img":
                            "https://img-blog.csdnimg.cn/20190904140856701.jpg?x-oss-process=image/resize,m_fixed,h_64,w_64",
                        "name": "123"
                      },
                      {
                        "img":
                            "https://img-blog.csdnimg.cn/20190904140856701.jpg?x-oss-process=image/resize,m_fixed,h_64,w_64",
                        "name": "456"
                      },
                      {
                        "img":
                            "https://img-blog.csdnimg.cn/20190904140856701.jpg?x-oss-process=image/resize,m_fixed,h_64,w_64",
                        "name": "678"
                      },
                      {
                        "img":
                            "https://img-blog.csdnimg.cn/20190904140856701.jpg?x-oss-process=image/resize,m_fixed,h_64,w_64",
                        "name": "789"
                      },
                      {
                        "img":
                            "https://img-blog.csdnimg.cn/20190904140856701.jpg?x-oss-process=image/resize,m_fixed,h_64,w_64",
                        "name": "123"
                      },
                      {
                        "img":
                            "https://img-blog.csdnimg.cn/20190904140856701.jpg?x-oss-process=image/resize,m_fixed,h_64,w_64",
                        "name": "456"
                      },
                      {
                        "img":
                            "https://img-blog.csdnimg.cn/20190904140856701.jpg?x-oss-process=image/resize,m_fixed,h_64,w_64",
                        "name": "789"
                      }
                    ],
                  ),
                  ADBanner(
                      bannerString:
                          "https://img-blog.csdnimg.cn/20190904140856701.jpg?x-oss-process=image/resize,m_fixed,h_64,w_64"),
                  TelCallMethod(imgUrl:"https://img-blog.csdnimg.cn/20190904140856701.jpg?x-oss-process=image/resize,m_fixed,h_64,w_64",tel: '13800138000'),
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
