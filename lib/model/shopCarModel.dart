import 'package:get/get.dart';

class ShopCarModel extends GetxController {
  final image = RxString('');
  final name = RxString('');
  final count = Rx<int>(0);
  final isClick = RxBool(false);
}
