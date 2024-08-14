import 'package:cart/cart/product_controller.dart';
import 'package:get/get.dart';
import 'cart_model.dart';

class CartController extends GetxController {
  var product = Get.find<ProductController>();

  void addToCart(Product item) {
    product.cartItems.add(item);
    update();
  }

  void removeFromCart(Product item) {
    product.cartItems.remove(item);
    update();
  }

  double get totalPrice =>
      product.cartItems.fold(0, (sum, item) => sum + item.price);
}
