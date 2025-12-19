import 'package:flutter/material.dart';
import 'product_model.dart';
import '../cart/cart_page.dart';
import '../cart/cart_item.dart';
class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      Product(id: '1', name: 'Helmet', price: 25000),
      Product(id: '2', name: 'Engine Oil', price: 15000),
      Product(id: '3', name: 'Brake Pads', price: 18000),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            title: Text(product.name),
            subtitle: Text('TZS ${product.price}'),
            trailing: const Icon(Icons.add_shopping_cart),
            onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (_) => CartPage(
        cartItems: [
          CartItem(product: product),
        ],
      ),
    ),
  );
},
