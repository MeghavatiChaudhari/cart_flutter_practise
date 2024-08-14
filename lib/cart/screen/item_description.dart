import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cart/cart/cart_controller.dart';
import 'package:cart/cart/cart_model.dart';
import 'package:cart/cart/screen/cart_page.dart';
import 'package:cart/cart/cart_binding.dart';

class ItemDescription extends StatelessWidget {
  final Product product; // Add a Product parameter

  const ItemDescription({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final CartController cartController = Get.find<CartController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
      ),
      body: Column(
        children: [
          Text(
            'A product description is a form of marketing copy used to describe and explain the benefits of your product. In other words, it provides all the information and details of your product on your ecommerce site.',
          ),
          ElevatedButton(
            onPressed: () {
              cartController.addToCart(product);
              Get.to(() => const CartPage());
            },
            child: const Text('Add to cart'),
          ),
        ],
      ),
    );
  }
}
