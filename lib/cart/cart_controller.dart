import 'package:get/get.dart';
import 'cart_model.dart';

class CartController extends GetxController {
  var cartItems = <Product>[].obs;

  void addToCart(Product item) {
    cartItems.add(item);
    update();
  }

  void removeFromCart(Product item) {
    cartItems.remove(item);
    update();
  }

  double get totalPrice => cartItems.fold(0, (sum, item) => sum + item.price);
}
