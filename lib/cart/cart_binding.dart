import 'package:cart/cart/cart_controller.dart';
import 'package:get/get.dart';
import 'package:cart/cart/product_controller.dart';

class CartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CartController());
  }
}
