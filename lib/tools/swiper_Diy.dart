import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../pages/GoodsDetail_page.dart';
import '../Router/app_pages.dart';

class SwiperDiy extends StatelessWidget {
  final List swiperDataList;
  const SwiperDiy({this.swiperDataList});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(9 * 750 / 16),
      width: ScreenUtil().setWidth(750),
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          // "${swiperDataList[index]['xx']" 取值问题
          return InkWell(
            onTap: () {
              Get.toNamed('${AppRoutes.GoodsDetail}?title=${index}');
            },
            child: Image.network(swiperDataList[index]),
          );
        },
        itemCount: swiperDataList.length,
        pagination: SwiperPagination(),
        autoplay: true,
      ),
    );
  }
}
