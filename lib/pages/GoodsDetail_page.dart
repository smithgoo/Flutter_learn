import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GoodsDetailVC extends StatelessWidget {
  final String title = Get.parameters['title'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('详情页面')),
      body: Center(
        child: Column(
          children: [
            Text('详情页面${title}'),
            FlatButton(
                onPressed: () {
                  print('tap add shopping car');
                },
                child: Text('加入购物车'))
          ],
        ),
      ),
    );
  }
}
