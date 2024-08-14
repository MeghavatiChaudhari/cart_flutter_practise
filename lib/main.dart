import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cart/cart/screen/product_list.dart';
import 'package:cart/cart/product_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'shopping cart App',
      initialBinding: ProductBinding(),
      home: ProductList(),
    );
  }
}
