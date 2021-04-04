import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meta/meta_meta.dart';

class ADBanner extends StatelessWidget {
  final String bannerString;
  const ADBanner({Key key, this.bannerString}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(50),
      child: Image.network(bannerString),
    );
  }
}
