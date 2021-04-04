import 'package:flutter/material.dart';
import 'pages/nav_bottomBar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 740, height: 1334)..init(context);
    return Container(
      child: MaterialApp(
        title: 'test',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.pink),
        home: Nav_bottomBar_index(),
      ),
    );
  }
}
