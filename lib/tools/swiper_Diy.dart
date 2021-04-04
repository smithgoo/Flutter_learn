import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SwiperDiy extends StatelessWidget {
  final List swiperDataList;
  const SwiperDiy({this.swiperDataList});

  @override
  Widget build(BuildContext context) {
    print('设备像素密度：${ScreenUtil.pixelRatio}');
    print('设备像素高度：${ScreenUtil.screenHeight}');
    print('设备像素宽度：${ScreenUtil.screenWidth}');
    return Container(
      height: ScreenUtil().setHeight(333),
      width: ScreenUtil().setWidth(750),
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          // "${swiperDataList[index]['xx']" 取值问题
          return Image.network(
              'https://img-blog.csdnimg.cn/20190904140856701.jpg?x-oss-process=image/resize,m_fixed,h_64,w_64');
        },
        itemCount: swiperDataList.length,
        pagination: SwiperPagination(),
        autoplay: true,
      ),
    );
  }
}
