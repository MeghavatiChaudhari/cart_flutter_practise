import 'package:get/get.dart';
import 'package:cart/cart/cart_model.dart';

class ProductController extends GetxController {
  // List of products
  var cartItems = <Product>[].obs;

  final List<Product> products = [
    Product(id: '1', name: "Product1", price: 29.99),
    Product(id: '2', name: "Product2", price: 65.99),
    Product(id: '3', name: "Product3", price: 68.99),
  ];
}
