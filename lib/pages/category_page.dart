import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import '../provide/controller.dart';
import 'package:get/get.dart';

class CategoryPage extends StatelessWidget {
  // const CategoryPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            MyButton(),
            Number(),
          ],
        ),
      ),
    );
  }
}

class Number extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Controller c = Get.find();
    return Container(
      margin: EdgeInsets.only(top: 220),
      child: Obx(
        () => Text('点击了 ${c.count.value} 次', style: TextStyle(fontSize: 30.0)),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Controller c = Get.put(Controller());
    return Container(
      margin: EdgeInsets.only(top: 170),
      child: RaisedButton(onPressed: () => c.increment(), child: Text('点击')),
    );
  }
}
