import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import '../provide/controller.dart';
import 'package:get/get.dart';

class CategoryPage extends StatelessWidget {
  // const CategoryPage({Key key}) : super(key: key);
  //
  final Controller c2 = Get.put(Controller());
  // final Controller c1 = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Number(c: c2),
            MyButton(c: c2),
          ],
        ),
      ),
    );
  }
}

class Number extends StatelessWidget {
  final Controller c;
  const Number({Key key, this.c}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 220),
      child: Obx(
        () => Text('点击了 ${c.count.value} 次', style: TextStyle(fontSize: 30.0)),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final Controller c;
  const MyButton({Key key, this.c}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 170),
      child: RaisedButton(onPressed: () => c.increment(), child: Text('点击')),
    );
  }
}
