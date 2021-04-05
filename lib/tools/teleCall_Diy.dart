import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meta/meta_meta.dart';
import 'package:url_launcher/url_launcher.dart';

class TelCallMethod extends StatelessWidget {
  final String imgUrl;
  final String tel;
  const TelCallMethod({Key key, this.imgUrl, this.tel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(100),
      child: InkWell(
        onTap: _launchUrl,
        child: Image.network(imgUrl),
      ),
    );
  }

  void _launchUrl() async {
    String ptel = 'tel:' + tel;
    if (await canLaunch(ptel)) {
      await launch(ptel);
    } else {
      throw '拨打错误 请检查号码';
    }
  }
}
