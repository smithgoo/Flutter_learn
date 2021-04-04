import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meta/meta_meta.dart';

class TopNavigator extends StatelessWidget {
  final List navigationList;
  const TopNavigator({Key key, this.navigationList}) : super(key: key);

  Widget _gridViewItemUI(BuildContext context, item) {
    return InkWell(
      onTap: () {print('点击了导航')},
      child: Column(
        children: [
          Image.network(
              'https://img-blog.csdnimg.cn/20190904140856701.jpg?x-oss-process=image/resize,m_fixed,h_64,w_64',width: ScreenUtil().setWidth(95));
          Text(item['name']),
        ],
      ),
    );
  }
 
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(320),
      padding: EdgeInsets.all(3.0),
      child: GridView.count(
        crossAxisCount: 5,
        padding: EdgeInsets.all(5.0),
        children: navigationList.map((item){

        }).toList(),
       //遍历 网格tolist
      ),
    );
  }
}
