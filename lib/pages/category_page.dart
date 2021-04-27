import 'dart:developer';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meta/meta.dart';
import '../provide/controller.dart';
import 'package:get/get.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品分类'),
      ),
      body: Container(
        child: Row(
          children: [
            LeftCategoryNav(),
            Column(children: [
              _RightCategoryNav(),
              RightContentWidget(),
            ])
          ],
        ),
      ),
    );
  }
}

//左侧大分类视图
class LeftCategoryNav extends StatefulWidget {
  LeftCategoryNav({Key key}) : super(key: key);

  @override
  _LeftCategoryNavState createState() => _LeftCategoryNavState();
}

class _LeftCategoryNavState extends State<LeftCategoryNav> {
  var TitleLst = ["星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期日"];
  var listIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(180),
      decoration: BoxDecoration(
          //设置点击显示的横线
          border: Border(right: BorderSide(width: 1, color: Colors.black12))),
      child: ListView.builder(
          itemCount: TitleLst.length,
          itemBuilder: (context, index) {
            return _leftInkWell(index);
          }),
    );
  }

  Widget _leftInkWell(int index) {
    bool isclick = false;
    isclick = (index == listIndex) ? true : false;
    return InkWell(
      onTap: () {
        setState(() {
          listIndex = index;
        });
      },
      child: Container(
        height: ScreenUtil().setHeight(100),
        padding: EdgeInsets.only(left: 10, top: 20),
        decoration: BoxDecoration(
            //设置点击显示的横线
            color: isclick ? Colors.black26 : Colors.white,
            border:
                Border(bottom: BorderSide(width: 1, color: Colors.black12))),
        child: Text(TitleLst[index]),
      ),
    );
  }
}

class _RightCategoryNav extends StatefulWidget {
  _RightCategoryNav({Key key}) : super(key: key);

  @override
  __RightCategoryNavState createState() => __RightCategoryNavState();
}

class __RightCategoryNavState extends State<_RightCategoryNav> {
  var TitleLst = [
    "主食",
    "水果",
    "零食",
    "小吃",
    "水果",
    "零食",
    "小吃",
    "小吃",
    "水果",
    "零食",
    "小吃"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(80),
      width: ScreenUtil().setWidth(570),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(bottom: BorderSide(width: 1, color: Colors.black12))),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: TitleLst.length,
        itemBuilder: (context, index) {
          return _rightInkWell(TitleLst[index]);
        },
      ),
    );
  }

  Widget _rightInkWell(String item) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
        child: Text(
          item,
          style: TextStyle(fontSize: ScreenUtil().setSp(28)),
        ),
      ),
    );
  }
}

class RightContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: ScreenUtil().setWidth(570),
        child: EasyRefresh(
          // enableControlFinishLoad: true,
          // enableControlFinishRefresh: true,
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return _rightInkWell(
                  'https://img-blog.csdnimg.cn/20190904140856701.jpg?x-oss-process=image/resize,m_fixed,h_64,w_64',
                  '122',
                  '345');
            },
          ),
          onRefresh: () async {
            print('上啦');
            //完成刷新
            EasyRefreshController _controller = EasyRefreshController();

            _controller.finishRefresh(success: true);
          },
          onLoad: () async {
            print('下啦');
            //完成刷新
            EasyRefreshController _controller = EasyRefreshController();
            _controller.finishLoad(success: true, noMore: false);
          },
        ),
      ),
    );
  }

  Widget _rightInkWell(String imgUrl, String showPrice, String realPrice) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: ScreenUtil().setWidth(570),
        height: ScreenUtil().setHeight(100),
        child: Row(
          children: [
            Image.network(
              imgUrl,
              width: 60,
              height: 90,
            ),
            Column(
              children: [
                Text(showPrice),
                Text(realPrice),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
