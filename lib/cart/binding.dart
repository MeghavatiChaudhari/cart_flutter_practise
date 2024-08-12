import 'package:cart/cart/cart_controller.dart';
import 'package:get/get.dart';

class ProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CartController>(() => CartController());
  }
}
