import 'package:cart/cart/product_binding.dart';
import 'package:cart/cart/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cart/cart/screen/item_description.dart';
import 'package:cart/cart/screen/cart_page.dart';
import 'package:cart/cart/cart_binding.dart';

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var productController = Get.find<ProductController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Get.to(() => const CartPage(), binding: CartBinding());
            },
          )
        ],
      ),
      body: ListView.builder(
          itemCount: productController.products.length,
          itemBuilder: (context, index) {
            final product = productController.products[index];
            return ListTile(
              title: Text(product.name),
              subtitle: Text('\$${product.price}'),
              trailing: ElevatedButton(
                onPressed: () {
                  // cartController.addToCart(product);
                  Get.to(() => ItemDescription(product: product),
                      binding: CartBinding());
                },
                child: const Text('view product details'),
              ),
            );
          }),
    );
  }
}
