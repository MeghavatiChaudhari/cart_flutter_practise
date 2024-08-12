import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cart/cart/cart_controller.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final CartController cartController = Get.find<CartController>();
    return Scaffold(
      appBar: AppBar(title: Text('Cart')),
      body: GetBuilder<CartController>(
        builder: (_) {
          return Column(
            children: [
              Expanded(
                  child: ListView.builder(
                      itemCount: cartController.cartItems.length,
                      itemBuilder: (context, index) {
                        final product = cartController.cartItems[index];
                        return ListTile(
                          title: Text(product.name),
                          subtitle: Text('\$${product.price}'),
                          trailing: IconButton(
                            icon: const Icon(Icons.remove_circle),
                            onPressed: () {
                              cartController.removeFromCart(product);
                            },
                          ),
                        );
                      })),
              Text(
                'Total : \$${cartController.totalPrice}',
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          );
        },
      ),
    );
  }
}
