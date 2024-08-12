import 'package:cart/cart/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../cart_model.dart';
import 'package:cart/cart/screen/cart_page.dart';
import 'package:cart/cart/screen/product_list.dart';
import 'package:cart/cart/binding.dart';

class ProductList extends StatelessWidget {
  // const ProductList({super.key});
  final List<Product> products = [
    Product(id: '1', name: "Product1", price: 29.99),
    Product(id: '2', name: "Product2", price: 65.99),
    Product(id: '3', name: "Product3", price: 68.99),
  ];

  @override
  Widget build(BuildContext context) {
    final CartController cartController = Get.find<CartController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Get.to(() => const CartPage(), binding: ProductBinding());
            },
          )
        ],
      ),
      body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];
            return ListTile(
              title: Text(product.name),
              subtitle: Text('\$${product.price}'),
              trailing: ElevatedButton(
                onPressed: () {
                  cartController.addToCart(product);
                },
                child: const Text('Add to Cart'),
              ),
            );
          }),
    );
  }
}
