import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GoodsDetailVC extends StatelessWidget {
  final String title = Get.parameters['title'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('详情页面')),
      body: Center(
        child: Text('详情页面${title}'),
      ),
    );
  }
}
