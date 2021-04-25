import 'package:dev_Flutter_demo/pages/GoodsDetail_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
part 'app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.GoodsDetail,
      page: () => GoodsDetailVC(),
    ),
  ];
}
